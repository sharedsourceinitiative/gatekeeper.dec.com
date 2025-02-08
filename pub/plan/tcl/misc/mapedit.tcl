# mapedit.tcl
# Copyright (c) 1996 by Sun Microsystems
#
# This file is really the concatenation of a few modules:
# IME - the image map editor
# fileselect - a file selection dialog
# browser - an interface to loading URLs into Netscape or Mosaic - UNIX only
# Platform - a couple of platform-specific routines mainly concerned with
#	where to store preference data.
# These modules have been merged together for ease of installation.

# maintainter is used for error mailings (tkerror.tcl)
set maintainer Brent.Welch@eng.sun.com

tk appname imagemap


if {$tcl_platform(platform) == "windows"} {
    set ime(config) c:/webtk/ime.ini
} elseif {$tcl_platform(platform) == "macintosh"} {
    set ime(config) ":Image Map Config"
} elseif {[info exists env(WEBEDIT_DIR)]} {
    set ime(config) ~/.mapedit
}

# Begin imagemap.tcl

proc IME_Init { {toplevel .} {file {}} } {
    global ime

    array set ime {
	    version "1.1 2/27/96"
	    dirty	0
	    imagedir images
	    ismapdir {}
	    format ncsa
	    objectset	{}
    }
    set ime(help) http://www.sunlabs.com/research/tcl/imagemap.html
    catch {source $ime(config)}

    if {"$toplevel" != "."} {
	if [winfo exists $toplevel] {
	    raise $toplevel
	    if [string length $file] {
		IME_Load $file
	    }
	    return
	}
	set t [toplevel $toplevel]
    } else {
	set t {}
    }
    set ime(toplevel) $toplevel
    wm iconname $toplevel imagemap
    wm title $toplevel "Sun Labs' Image Map Editor"
    wm protocol $toplevel WM_DELETE_WINDOW [list IME_Quit $toplevel]

    frame $t.rim -border 10 -relief flat
    set ime(can) [canvas $t.imedit -width 200 -height 200 \
	-highlightthickness 0 -border 0 -background white]

    IMEBindings $ime(can)

    set f [frame $t.buttons -class Buttons]
    pack $f -side top -fill x
    pack $t.rim -side top -fill both -expand true
    pack $ime(can) -in $t.rim -side top -expand true

    menubutton $t.file -text File -menu $t.file.m
    set m [menu $t.file.m]
    $m add command -label Open -command IME_Open
    $m add command -label Save -command IME_Save
    $m add command -label "Save As..." -command IME_SaveAs
    $m add separator
    $m add cascade -label "Help" -menu $m.help
    $m add command -label "Configuration..." -command IME_Config
    $m add separator
    $m add command -label Quit -command [list IME_Quit $toplevel]

    set m [menu $t.file.m.help]
    $m add command -label "Left click to drag out shapes"
    $m add command -label "Right click to edit or delete shapes"
    $m add separator
    $m add command -label "Load Help URL into Netscape" -command [list Netscape $ime(help)]
    $m add command -label "Load Help URL into Mosaic" -command [list Mosaic $ime(help)]
    $m add command -label "Load Help URL into WebEdit" -command [list WebEdit $ime(help)]


    menubutton $t.edit -text Edit -menu $t.edit.m
    set m [menu $t.edit.m]

    set ime(shape) rect
    $m add radio -label Circle \
	-value circle -variable ime(shape)
    $m add radio -label Rect \
	-value rect -variable ime(shape)
    set ime(polystate) ""
    $m add radio -label Poly -command {set ime(polystate) ""} \
	-value poly -variable ime(shape)
    $m add separator
    $m add command -label "Bring to front" -command IME_Raise
    $m add command -label "Push to back" -command IME_Lower
    $m add separator
    $m add command -label "Url Set" -command IME_UrlEdit

    radiobutton $t.circle -text Circle \
	-value circle -variable ime(shape)
    radiobutton $t.rect -text Box \
	-value rect -variable ime(shape)
    set ime(polystate) ""
    radiobutton $t.poly -text Polygon \
	-value poly -variable ime(shape) \
	-command {set ime(polystate) ""}

    catch {
	foreach shape {circle rect poly} {
	    $t.$shape config -bitmap @$ime(library)/images/$shape.xbm
	}
    }

    pack $t.file $t.edit -in $f -side left
    pack $t.circle $t.rect $t.poly -in $f -side right

    set ime(status) "Version $ime(version)"
    entry $t.status -textvariable ime(status) -relief flat
    pack $t.status -in $f -side top -fill x -expand true

    if [string length $file] {
	IME_Load $file
    } else {
	set ime(dirty) 0
    }
}
proc IMEBindings {can} {
    bind $can <Button-1> {IME_Start %W %x %y}
    bind $can <B1-Motion> {IME_Motion %W %x %y}
    bind $can <ButtonRelease-1> {IME_End %W %x %y}
    bind $can <Motion> {
	if {$ime(shape) == "poly"} {
	    IME.polyMotion %W %x %y
	}
    }
    bind $can <ButtonRelease-2> {
	if {$ime(shape) == "poly"} {
	    IME.polyFinish %W %x %y
	}
    }
    bind $can <Button-3> {IME_Edit %W %x %y}

    $can bind map <Motion> {IME_Feedback %W %x %y}
    $can bind map <Leave> {IME_Message ""}
}
proc IMEConfigDir {key label} {
    global ime
    set new [fileselect "Set $label" {} dir]
    if [string length $new] {
	set ime(key) $new
    }
}
proc IME_Config {} {
    global ime
    set t .imeconfig
    if ![winfo exists $t] {
	toplevel $t -bd 10 -relief flat
	message $t.msg
	pack $t.msg -side top -fill x

	foreach {key label} {
	    imagedir "Image Dir"
	    ismapdir "Ismap Dir"
	} {
	    set f [frame $t.$key]
	    pack $f -side top -fill x
	    button $f.label -text "$label:" -command [list IMEConfigDir $key $label]
	    entry $f.entry -width 40 -textvariable ime($key)
	    pack $f.label -side left
	    pack $f.entry -side top -fill x
	}

	set r [frame $t.choice]
	pack $t.choice -side top
	label $r.label -text "Map Format:"
	radiobutton $r.ncsa -variable ime(format) -text NCSA -value ncsa
	radiobutton $r.cern -variable ime(format) -text CERN -value cern
	pack $r.label $r.ncsa $r.cern -side left

	frame $t.buttons
	pack $t.buttons -side bottom -fill x
	button $t.quit -text OK -command {set ime(configdone) 1}
	button $t.cancel -text Cancel -command {set ime(configdone) 0}
	pack $t.quit -in $t.buttons -side left
	pack $t.cancel -in $t.buttons -side right
    } else {
	raise $t
    }
    $t.msg config -aspect 1500 -text "Image Map Editor Configuration
Define the directory that contains your images,
and the directory for the map information.
If your maps go in the same directory as the images,
either leave the map directory blank or make it the
same as the image directory.
If the image file is foo.gif, then
the map file is foo.map"
    set ime(configdone) {}
    set olddir $ime(imagedir)
    set oldmap $ime(ismapdir)
    tkwait variable ime(configdone)
    if {! $ime(configdone)} {
	set ime(imagedir) $olddir
	set ime(ismapdir) $oldmap
	after 200
    } else {
	if [catch {open $ime(config) w} out] {
	    IME_Message $out
	} else {
	    puts $out "# Image Map Editor Configuration"
	    foreach x {config imagedir ismapdir format} {
		puts $out [list set ime($x) $ime($x)]
	    }
	    close $out
	}
    }
    destroy $t
}
proc IMEUrlEditEntry {parent i label variable} {
    global ime
    set f [frame $parent.$i]
    pack $f -side top -fill x
    if {$i >= 1} {
	button $f.label -text "$label:" -width 10 -anchor w \
	    -command [list IMEHighlight $i] \
	    -padx 1 -pady 1 -takefocus 0
    } else {
	label $f.label -text "$label:" -width 10 -anchor w \
	    -bd 1 -padx 1 -pady 1
    }
    entry $f.entry -width 40 -textvariable $variable
    bind $f.entry <Return> [list IMEHighlightReset]
    pack $f.label -side left
    pack $f.entry -side top -fill x
}
proc IME_UrlEdit {} {
    global ime
    set t .imeurledit
    if ![winfo exists $t] {
	toplevel $t -bd 10 -relief flat
	message $t.msg
	frame $t.urls
	pack $t.msg $t.urls -side top -fill x

	frame $t.buttons
	pack $t.buttons -side bottom -fill x
	button $t.quit -text OK -command {set ime(urldone) 1}
	button $t.cancel -text Cancel -command {set ime(urldone) 0}
	pack $t.quit -in $t.buttons -side left
	pack $t.cancel -in $t.buttons -side right
    } else {
	raise $t
	catch {eval destroy [winfo children $t.urls]}
    }
    $t.msg config -aspect 1500 -text "Image Map URLS"
    IMEUrlEditEntry $t.urls 0 "Default URL" ime(default)
    set oldurl(default) $ime(default)
    set i 1
    foreach x $ime(objectset) {
	IMEUrlEditEntry $t.urls $i [lindex $x 1] ime(url,[lindex $x 0])
	set oldurl(url,[lindex $x 0]) $ime(url,[lindex $x 0])
	incr i
    }
    set ime(urldone) {}
    tkwait variable ime(urldone)
    if {! $ime(urldone)} {
	array set ime [array get oldurl]
    } else {
	set ime(dirty) 1
    }
    IMEHighlightReset
    catch {destroy $t}
}
proc IMEHighlight {i} {
    global ime
    set j 1
    foreach x $ime(objectset) {
	set id [lindex $x 0]
	if {$j == $i} {
	    $ime(can) itemconfig $id -fill red
	} else {
	    if [string length $ime(url,$id)] {
		$ime(can) itemconfig $id -fill green
	    } else {
		$ime(can) itemconfig $id -fill blue
	    }
	}
	incr j
    }
}
proc IMEHighlightReset {} {
    IMEHighlight 0
}
proc IME_Dialog {shape item urlVar commentVar points} {
    global ime
    set t .imedialog
    if ![winfo exists $t] {
	toplevel $t -bd 10 -relief flat
	message $t.msg
	frame $t.url
	label $t.label -text URL:
	entry $t.entry -width 40
	bind $t.entry <Return> {set ime(editdone) 1 ; break}
	set g [frame $t.x]
	label $t.label2 -text Comment:
	entry $t.comment -width 40
	bind $t.comment <Return> {set ime(editdone) 1 ; break}
	pack $t.msg $t.url $g -side top -fill x
	pack $t.label -in $t.url -side left
	pack $t.entry -in $t.url -side top -fill x
	pack $t.label2 -in $g -side left
	pack $t.comment -in $g -side top -fill x

	frame $t.buttons
	pack $t.buttons -side top -fill x
	button $t.quit -text OK -command {set ime(editdone) 1}
	button $t.delete -text Delete -command {set ime(editdone) -1}
	button $t.cancel -text Cancel -command {set ime(editdone) 0}
	button $t.show
	pack $t.quit $t.show -in $t.buttons -side left
	pack $t.cancel $t.delete -in $t.buttons -side right

    } else {
	if {[info exists ime(editdone)] && 
		([string length $ime(editdone)] == 0)} {
	    set ime(editdone) 0
	    return
	}
	wm deiconify $t
	raise $t
	destroy $t.points
    }

    $t.show config -text "Show Points" -command [list IMEDialogShowPoints $t]
    $t.msg config -text "Edit $shape"
    $t.entry config -textvariable $urlVar
    $t.comment config -textvariable $commentVar
    upvar #0 $urlVar url $commentVar comment
    set oldurl $url
    set oldcomment $comment

    global tpoints
    catch {unset tpoints}
    set f [frame $t.points -bd 4 -relief ridge]
    set i  1
    foreach {x y} $points {
	set g [frame $f.$i]
	label $g.l1 -text "Point $i X:"
	label $g.l2 -text " Y:"
	set tpoints($i,x) $x
	entry $g.x -textvariable tpoints($i,x) -width 5
	bind $g.x <Return> [list IMEUpdateCoords $shape $item]
	set tpoints($i,y) $y
	entry $g.y -textvariable tpoints($i,y) -width 5
	bind $g.y <Return> [list IMEUpdateCoords $shape $item]
	pack $g -side top -fill x
	pack $g.l1 $g.x $g.l2 $g.y -side left
	incr i
    }
    set tpoints(n) $i
    array set oldpoints [array get tpoints]
    set ime(editdone) {}
    tkwait variable ime(editdone)
    wm withdraw $t
    if {$ime(editdone) == 0} {
	set url $oldurl
	set comment $oldcomment
	array set tpoints [array get oldpoints]
    } elseif {$ime(editdone) < 0} {
	IMEDelete $item
	catch {unset url}
	return
    }
    IMEUpdateCoords $shape $item
}

proc IMEDialogShowPoints {t} {
    pack $t.points -side top -pady 10
    $t.show config -text "Hide Points" -command [list IMEDialogHidePoints $t]
}
proc IMEDialogHidePoints {t} {
    pack forget $t.points
    $t.show config -text "Show Points" -command [list IMEDialogShowPoints $t]
}
proc IME_Load {file} {
    global ime
    IME_Message "Loading [file tail $file] ..."
    if {[file extension $file] == ".map"} {
	set map $file
	set file [file root $file].gif
    } else {
	set map [IME_MapName $file]
    }
    if [catch {
	set image [image create photo -file $file]
    } err] {
	IME_Message "Cannot load GIF $file"
	return
    }
    catch {image delete $ime(image)}
    catch {$ime(can) delete all}
    set ime(objectset) {}
    foreach x [array names ime url,*] {unset ime($x)}
    foreach x [array names ime points,*] {unset ime($x)}
    foreach x [array names ime comment,*] {unset ime($x)}
    set ime(dirty) 0
    set ime(imagefile) $file
    set ime(image) $image
    set ime(canimg) [$ime(can) create image 0 0 -anchor nw -image $ime(image)]
    set bb [$ime(can) bbox $ime(canimg)]
    $ime(can) config -width [lindex $bb 2]
    $ime(can) config -height [lindex $bb 3]
    IME_Message [file tail $file]
    IME_LoadMap $map
}
proc IME_MapName {imagefile} {
    global ime
    if {[string length [string trim $ime(ismapdir)]] == 0} {
	return [file root $imagefile].map
    } else {
	return $ime(ismapdir)/[file root [file tail $imagefile]].map
    }
}
proc IME_LoadMap {mapname} {
    global ime
    if [catch {open $mapname} in] {
	IME_Message "Cannot open Map Info: $mapname"
	return
    }
    set comment {}
    foreach line [split [read $in] \n] {
	if [regexp {^[ 	]*(#.*)?$} $line] {
	    set comment $line
	    continue
	}
	regexp {^[ 	]*([^ 	]+)[ 	]*([^ 	].+)?$} $line \
	    all key rest
	if [regexp {^\(} $rest] {
	    # CERN format
	    # shape (x,y) (x,y) ...  url
	    set ime(format) cern
	    regexp {^(.+)([ 	]+([^ 	]+))$} $rest \
		all points junk url
	    regsub -all {[\(\)]} $points {} points
	} else {
	    # NCSA format
	    # shape url x,y x,y x,y ...
	    set ime(format) ncsa
	    regexp {^([^ 	]+)([ 	]+(.+))?$} $rest \
		all url junk points
	}
	set key [string tolower $key]
	set coords {}
	if [string length $points] {
	    regsub -all {[ 	]+} $points { } points
	    foreach pair [split $points] {
		foreach {x y} [split $pair ,] { break }
		lappend coords $x $y
	    }
	}
	if {[string compare $key "default"] == 0} {
	    set ime(default) $url
	    continue
	}
	if [catch {
	    switch -glob -- $key {
		r* { set id [IME.rectCreate $coords] ; set key rect }
		c* { set id [IME.circleCreate $coords] ; set key circle }
		p* { set id [IME.polyCreate $coords] ; set key poly}
		default {error "Unknown shape $key"}
	    }
	    lappend ime(objectset) [list $id $key]
	    set ime(points,$id) $coords
	    set ime(url,$id) $url
	    set ime(comment,$id) $comment
	    set comment {}
	} err] {
	    IME_Message "Bad map info: $line \n$err"
	}
    }
}

proc IME_Destroy {} {
    eval destroy [winfo children .]
    eval image delete [image names]
}
proc IME_Open {} {
    global ime
    if [IMEDirty] {
	DialogConfirm $ime(toplevel) .dirty \
	    "Save changes to current map?" IME_Save { } \
	    "Save" "Do Not Save"
    }
    set file [fileselect "Open an Image File" $ime(imagedir) file]
    if [string length $file] {
	IME_Load $file
    }
}

proc IMEDirty {} {
    global ime
    return $ime(dirty)
}
proc IME_SaveAs {} {
    global ime
    set new [fileselect "Image Map File" [IME_MapName $ime(imagefile)] {}]
    if [string length $new] {
	IME_Save $new
    }
}
proc IME_Save {{where {}}} {
    global ime
    if {[string length $where] == 0} {
	set ime(mapfile) [IME_MapName $ime(imagefile)]
    } else {
	set ime(mapfile) $where
    }
    foreach obj $ime(objectset) {
	foreach {id shape} $obj {break}	;# list assignment
	if {![info exists ime(url,$id)] || [string length $ime(url,$id)] == 0} {
	    lappend nourl $id
	}
    }
    if [info exists nourl] {
	foreach id $nourl {
	    $ime(can) itemconfig $id -fill blue
	}
	DialogInfo $ime(toplevel) \
"Please assign URLs to blue hot spots.
Right click on a hot spot to edit its properties."
	return
    }
    if [catch {open $ime(mapfile) w} out] {
	DialogInfo $ime(toplevel) "Cannot create $ime(mapfile)\n$out"
	return
    }
    puts $out "# Map for $ime(imagefile)"
    foreach obj $ime(objectset) {
	foreach {id shape} $obj {break}	;# list assignment
	set coords $ime(points,$id)
	if {[info exists ime(comment,$id)] && 
		[string length $ime(comment,$id)]} {
	    if ![string match #* $ime(comment,$id)] {
		set ime(comment,$id) #$ime(comment,$id)
	    }
	    puts $out $ime(comment,$id)
	}
	puts -nonewline $out "$shape"
	if {$ime(format) == "ncsa"} {
	    puts -nonewline $out " $ime(url,$id)"
	    set format " %d,%d"
	} else {
	    set format " (%d,%d)"
	}
	foreach {fx fy} $coords {
	    scan $fx %d x
	    scan $fy %d y
	    puts -nonewline $out [format $format [expr round($x)] [expr round($y)]]
	}
	if {$ime(format) == "cern"} {
	    puts -nonewline $out " $ime(url,$id)"	    
	}
	puts $out ""
    }
    if {[info exist ime(default)] && [string length $ime(default)]} {
	puts $out "default $ime(default)"
    }
    close $out
    set ime(dirty) 0
    DialogInfo $ime(toplevel) "Saved Map\n$ime(mapfile)"
}

proc IME_Start {can x y} {
    global ime
    if ![info exists ime(canimg)] {
	IME_Message "Open an image, please"
	return
    }
    set ime(active) 1
    set ime(x) $x
    set ime(y) $y
    IME.$ime(shape)Start $can
}
proc IME_Motion {can x y} {
    global ime
    if ![info exists ime(active)] {
	return
    }
    IME.$ime(shape)Motion $can $x $y
}
proc IME_End {can x y} {
    global ime
    if ![info exists ime(active)] {
	return
    }
    IME.$ime(shape)End $can $x $y
    set ime(dirty) 1
    unset ime(active)
    if [winfo exists .imeurledit] {
	# Keep the dialog with all URLs up-to-date
	IME_UrlEdit
    }
}
proc IME_Edit {can x y} {
    global ime
    set it [$ime(can) find overlapping \
	[expr $x -2] [expr $y -2] [expr $x+2] [expr $y+2]]
    foreach x $it {
	if {$x != $ime(canimg)} {
	    set item $x
	    # Continue and find last, uppermost shape
	}
    }
    if [info exists item] {
	set i 0
	foreach x $ime(objectset) {
	    if {[lindex $x 0] == $item} {
		set ime(activeshape) [lindex $x 1]
		set points $ime(points,$item)
		set ime(activeitem) $item
		$ime(can) itemconfig $item -fill red
		IME_ShowPoints $item $points
		IME_Dialog $ime(activeshape) $item ime(url,$item) \
			ime(comment,$item) $points
		IME_HidePoints $item
		$ime(can) itemconfig $item -fill green
		catch {unset ime(activeitem)}
		return
	    }
	    incr i
	}
    }
}
proc IME_Feedback {can x y} {
    global ime
    set it [$ime(can) find overlapping \
	[expr $x -2] [expr $y -2] [expr $x+2] [expr $y+2]]
    foreach x $it {
	if [info exists ime(url,$x)] {
	    set item $x
	}
    }
    if [info exists item] {
	IME_Message $ime(url,$item)
    }
}
proc IMEUpdateCoords {shape item} {
    global ime tpoints
    set points {}
    for {set j 1} {$j < $tpoints(n)} {incr j} {
	lappend points $tpoints($j,x) $tpoints($j,y)
    }
    set ime(points,$item) [IME.${shape}Coords $item $points]
}
proc IMEDelete {item} {
    global ime
    set i 0
    foreach x $ime(objectset) {
	if {[lindex $x 0] == $item} {
	    set ime(objectset) [lreplace $ime(objectset) $i $i]
	    catch {unset ime(url,$item)}
	    catch {unset ime(comment,$item)}
	    catch {unset ime(points,$item)}
	    break
	}
	incr i
    }
    $ime(can) delete $item
    set ime(dirty) 1
}

proc IME.rectStart {can} {
    return
}
proc IME.rectMotion {can x y} {
    global ime
    catch {$ime(can) delete $ime(rect)}
    set ime(rect) [$ime(can) create rect $ime(x) $ime(y) $x $y]
}
proc IME.rectEnd {can x y} {
    global ime
    if [info exists ime(rect)] {
	$ime(can) itemconfig $ime(rect) -tag map -fill blue -stipple gray50
	lappend ime(objectset) [list $ime(rect) rect]
	set ime(points,$ime(rect)) [$ime(can) coords $ime(rect)]
	# Lower to just above the image - below eariler shapes.
	$ime(can) raise $ime(rect) $ime(canimg)
	unset ime(rect)
    }
}
proc IME.rectCreate {coords} {
    global ime
    set id [eval {$ime(can) create rect} $coords {-fill green -stipple gray50 -tag map}]
    $ime(can) raise $id $ime(canimg)
    return $id
}
proc IME.rectCoords {item points} {
    global ime
    eval {$ime(can) coords $item} $points
    return $points
}


proc IME.circleStart {can} {
    return
}
proc IME.circleMotion {can x y} {
    global ime
    catch {$ime(can) delete $ime(circle)}

    set dx [expr $x - $ime(x)]
    set dy [expr $y - $ime(y)]
    set r [expr sqrt($dx*$dx + $dy*$dy)]

    set x1 [expr $ime(x)-$r]
    set x2 [expr $ime(x)+$r]
    set y1 [expr $ime(y)-$r]
    set y2 [expr $ime(y)+$r]
    set ime(circle) [$ime(can) create oval $x1 $y1 $x2 $y2 \
	-tag map]
}
proc IME.circleEnd {can x y} {
    global ime
    if [info exists ime(circle)] {
	$ime(can) itemconfig $ime(circle) -tag map -fill blue -stipple gray50
	set points [eval IMErect2polar [$ime(can) coords $ime(circle)]]
	lappend ime(objectset) [list $ime(circle) circle]
	set ime(points,$ime(circle)) $points
	$ime(can) raise $ime(circle) $ime(canimg)
	unset ime(circle)
    }
}
# Map from Tk corner coords to center,edge point
# The atan2 call is to get radians for a 45 degree angle
proc IMErect2polar {x1 y1 x2 y2} {
    set x [expr ($x1+$x2)/2.0]
    set y [expr ($y1+$y2)/2.0]
    set r [expr ($x2-$x)]
    return [list $x $y [expr $x+$r*cos(atan2(1,1))] [expr $y+$r*sin(atan2(1,1))] ]
}
# Map from center,edge points to the Tk corner coords
proc IMEpolar2rect {x1 y1 x2 y2} {
    set dx [expr $x1 - $x2]
    set dy [expr $y1 - $y2]
    set r [expr sqrt($dx*$dx + $dy*$dy)]
    return [list [expr $x1-$r] [expr $y1-$r] [expr $x1+$r] [expr $y1+$r] ]
}
proc IME.circleCreate {points} {
    global ime
    set coords [eval IMEpolar2rect $points]
    set id [eval {$ime(can) create oval} $coords \
	    {-fill green -stipple gray50 -tag map}]
    $ime(can) raise $id $ime(canimg)
    return $id
}
proc IME.circleCoords {item points} {
    global ime
    set coords [eval IMEpolar2rect $points]
    eval {$ime(can) coords $item} $coords
    return $points
}

proc IME.polyStart {can} {
    global ime
    if {$ime(polystate) == ""} {
	set ime(poly,x) $ime(x)
	set ime(poly,y) $ime(y)
	set ime(polyset) [list {} $ime(x) $ime(y)]
    }
    set ime(polystate) active
    return
}
proc IME.polyMotion {can x y} {
    global ime
    if {$ime(polystate) == "active"} {
	catch {$ime(can) delete $ime(line)}
	set ime(line) [$ime(can) create line $ime(x) $ime(y) $x $y -width 2]
    }
}
proc IME.polyEnd {can x y} {
    global ime
    if {$x != $ime(x) || $y != $ime(y)} {
#	IME.polyMotion $can $x $y
    }
    if [info exists ime(line)] {
	lappend ime(polyset) $ime(line) $x $y
	unset ime(line)
	set ime(x) $x
	set ime(y) $y
    }
}
proc IME.polyFinish {can x y} {
    global ime
    if {$ime(polystate) == "active"} {
	IME.polyEnd $can $ime(poly,x) $ime(poly,y)
	set points {}
	foreach {cid x y} $ime(polyset) {
	    append points " $x $y"
	    $ime(can) delete $cid
	}
	set cid [eval {$ime(can) create poly} $points \
	    {-fill blue -stipple gray50 -tag map -width 2}]
	lappend ime(objectset) [list $cid poly]
	set ime(points,$cid) $points
	$ime(can) raise $cid $ime(canimg)
	unset ime(polyset)
	set ime(polystate) ""
    }
}
proc IME.polyCreate {coords} {
    global ime
    set id [eval {$ime(can) create poly} $coords {-fill green -stipple gray50 -tag map}]
    $ime(can) raise $id $ime(canimg)
    return $id
}
proc IME.polyCoords {item points} {
    global ime
    eval {$ime(can) coords $item} $points
    return $points
}


proc IME.polyCancel {can} {
    global ime
    if {$ime(polystate) == ""} {
	return 0
    }
    foreach {cid x y} $ime(polyset) {
	$ime(can) delete $cid
    }
    unset ime(polyset)
    set ime(polystate) ""
    return 1
}

proc IME.editStart {can} {
    global ime
    set it [$ime(can) find overlapping \
	[expr $ime(x) -2] [expr $ime(y) -2] [expr $ime(x)+2] [expr $ime(y)+2]]
    catch {unset ime(activepoint)}
    foreach item $it {
	set tag [$ime(can) itemcget $item -tag]
	if [regexp {point=([0-9]+)} $tag x n] {
	    set ime(activepoint) $item
	    set ime(pointindex) $n
	    $ime(can) itemconfig $item -fill red
	    return
	}
    }
}
proc IME.editMotion {can x y} {
    global ime tpoints
    if [info exists ime(activepoint)] {
	set dx [expr $x - $ime(x)]
	set dy [expr $y - $ime(y)]
	$ime(can) move $ime(activepoint) $dx $dy
	set ime(x) [set tpoints($ime(pointindex),x) $x]
	set ime(y) [set tpoints($ime(pointindex),y) $y]
	IMEUpdateCoords $ime(activeshape) $ime(activeitem)
    }
}
proc IME.editEnd {can x y} {
    global ime
    if [info exists ime(activepoint)] {
	$ime(can) itemconfig $ime(activepoint) -fill white
	unset ime(activepoint)
    }
}

proc IME_ShowPoints {item points} {
    global ime
    set i 1
    foreach {x y} $points {
	$ime(can) create rect [expr $x-3] [expr $y-3] [expr $x+3] [expr $y+3] \
	    -tag "point=$i point" -fill white
	incr i
    }
    set ime(lastshape) $ime(shape)
    set ime(shape) edit
}
proc IME_HidePoints {item} {
    global ime
    $ime(can) delete point
    set ime(shape) $ime(lastshape)
}

proc IME_Raise {} {
    global ime
    if [info exists ime(activeitem)] {
	# Move up to just below the control points
	$ime(can) lower $ime(activeitem) point
    }
}
proc IME_Lower {} {
    global ime
    if [info exists ime(activeitem)] {
	# Move down to just above the image
	$ime(can) raise $ime(activeitem) $ime(canimg)
    }
}

proc IME_Quit {{toplevel .}} {
    global ime
    if [IMEDirty] {
	DialogConfirm $ime(toplevel) .dirty "Save changes to current map?" \
	    IME_Save { } "Save & Exit" "Exit w/out Saving"
    }
    if {$toplevel == "."} {
	exit
    } else {
	catch {destroy .imeconfig}
	catch {destroy .imeurledit}
	catch {destroy .imedialog}
	destroy $toplevel
    }
}
proc IME_Message {string} {
    global ime
    set ime(status) $string
    update idletasks
}
# For browser.tcl
proc LogUser {string} {
    IME_Message $string
}

# filecomp.tcl

proc fileselectResources {} {
    # path is used to enter the file name
    option add *Fileselect*path.relief		sunken	startup
    option add *Fileselect*path.background	white	startup
    option add *Fileselect*path.foreground	black	startup
    # Text for the label on pathname entry
    option add *Fileselect*l.text		File:	startup
    # Text for the OK and Cancel buttons
    option add *Fileselect*ok*text		OK	startup
    option add *Fileselect*ok*underline		0	startup
    option add *Fileselect*cancel.text		Cancel	startup
    option add *Fileselect*cancel.underline 	0	startup
    # Size of the listbox
    option add *Fileselect*list.width		20	startup
    option add *Fileselect*list.height		10	startup
}

# fileselect returns the selected pathname, or {}
# exists can be:
# ""	- ok to open a new file
# file	- must open existing file
# dir	- ok to return directory pathname

proc fileselect {{why "File Selection"} {default {}} {exists ""} } {
	global fileselect

	if [winfo exists .fileselect] {
	    raise .fileselect
	    set t .fileselect
	} else {
	    set t [toplevel .fileselect -bd 4 -class Fileselect]
	    fileselectResources
    
	    message $t.msg -aspect 1000 -text $why
	    pack $t.msg -side top -fill x
	
	    # Create a read-only entry for the durrent directory
	    set fileselect(dirEnt) [entry $t.dir -width 15 \
		    -relief flat -state disabled]
	    pack $t.dir -side top -fill x
	
	    # Create an entry for the pathname
	    # The value is kept in fileselect(path)
	    frame $t.top
	    label $t.top.l -padx 0
	    set e [entry $t.top.path \
		    -textvariable fileselect(path)]
	    pack $t.top -side top -fill x
	    pack $t.top.l -side left
	    pack $t.top.path -side right -fill x -expand true
    
	
	    # Create a listbox to hold the directory contents
	    set lb [listbox $t.list \
		    -yscrollcommand [list $t.scroll set]]
	    scrollbar $t.scroll -command [list $lb yview]
	    set fileselect(list) $lb
    
	    # Create the OK and Cancel buttons
	    # The OK button has a rim to indicate it is the default
	    frame $t.buttons -bd 10
	    frame $t.buttons.ok -bd 2 -relief sunken
	    set ok [button $t.buttons.ok.b \
		    -command "fileselectOK 1"]
	    set can [button $t.buttons.cancel \
		    -command fileselectCancel]
	    if [string match dir $exists] {
		set list [button $t.buttons.dir -text "List Dir" \
		    -command fileselectOK]
	    }
    
	    # Pack the list, scrollbar, and button box
	    # in a horizontal stack below the upper widgets
	    pack $t.list -side left -fill both -expand true
	    pack $t.scroll -side left -fill y
	    pack $t.buttons -side left -fill both
	    pack $t.buttons.ok \
		    -side top -padx 10 -pady 5
	    catch {
		pack $t.buttons.dir \
		    -side top -padx 10 -pady 5
	    }
	    pack $t.buttons.cancel \
		    -side top -padx 10 -pady 5
	    pack $t.buttons.ok.b -padx 4 -pady 4
    
	    fileselectBindings $t $e $lb $ok $can
	}
	# Initialize variables and list the directory
	if {[string length $default] == 0} {
		set fileselect(path) {}
		set dir [pwd]
	} elseif {[file isdirectory $default]} {
		set fileselect(path) {}
		set dir $default
	} else {
		set fileselect(path) [file tail $default]
		set dir [file dirname $default]
	}
	set fileselect(dir) {}
	set fileselect(done) 0
	set fileselect(exist) $exists

	# Wait for the listbox to be visible so
	# we can provide feedback during the listing 
	tkwait visibility $fileselect(list)
	fileselectList $dir

	tkwait variable fileselect(done)
	catch {destroy $t}
	return $fileselect(path)
}
proc fileselectBindings { t e lb {ok {}} {can {}} } {
	# t - toplevel
	# e - name entry
	# lb - listbox
	# ok - OK button
	# can - Cancel button

	# Elimate the all binding tag because we
	# do our own focus management
	foreach w [list $e $lb] {
	    bindtags $w [list $t [winfo class $w] $w]
	}
	# Dialog-global cancel binding
	bind $t <Control-c> fileselectCancel

	# Entry bindings
	bind $e <Return> fileselectOK 
	bind $e <space> fileselectComplete

	# A single click, or <space>, puts the name in the entry
	# A double-click, or <Return>, selects the name
	bind $lb <space> "fileselectTake $%W ; focus $e"
	bind $lb <Button-1> \
		"fileselectClick %W %y ; focus $e"
	bind $lb <Return> "fileselectTake %W ; fileselectOK"
	bind $lb <Double-Button-1> \
		"fileselectClick %W %y ; fileselectOK"

	# Focus management.  	# <Return> or <space> selects the name.
	bind $e <Tab> "focus $lb ; $lb select set 0"
	bind $lb <Tab> "focus $e"

	if {$ok != {}} {
		# Button focus.  Extract the underlined letter
		# from the button label to use as the focus key.
		foreach but [list $ok $can] {
			bindtags $w [list $t [winfo class $w] $w]
			set char [string tolower [string index  \
				[$but cget -text] [$but cget -underline]]]
			bind $t <Alt-$char> "focus $but ; break"
		}
		bind $ok <Tab> "focus $can"
		bind $can <Tab> "focus $ok"
	}

	# Set up for type in
	focus $e
}

proc fileselectList { dir {files {}} } {
	global fileselect
	global tcl_platform
	# Update the directory display
	set e $fileselect(dirEnt)
	$e config -state normal
	$e delete 0 end
	$e insert 0 $dir
	$e config -state disabled
	# scroll to view the tail end
	$e xview moveto 1

	$fileselect(list) delete 0 end
	set fileselect(dir) $dir
	if ![file isdirectory $dir] {
	    $fileselect(list) insert 0 "Bad Directory"
	    return
	}
	$fileselect(list) insert 0 Listing...
	update idletasks
	$fileselect(list) delete 0
	if {[string length $files] == 0} {
		# List the directory and add an
		# entry for the parent directory
		if [catch {
		    set pat [file join $fileselect(dir) *]
		}] {
		    if [string match / $fileselect(dir)] {
			set pat /*
		    } else {
			set pat $fileselect(dir)/*
		    }
		}
		set files [glob -nocomplain $pat]
		$fileselect(list) insert end [fileselectParent]
	}
	# Sort the directories to the front
	set dirs {}
	set others {}
	foreach f [lsort $files] {
		if [file isdirectory $f] {
			lappend dirs [fileselectShowDir [file tail $f]]
		} else {
			lappend others [file tail $f]
		}
	}
	if [string match dir $fileselect(exist)] {
	    set others ""
	}
	foreach f [concat $dirs $others] {
		$fileselect(list) insert end $f
	}
}
proc fileselectOK {{takedir 0}} {
	global fileselect
	if [catch {
	    set spath [file split $fileselect(path)]
	    set first [lindex $spath 0]
	    if [fileselectIsParent? $first] {
		set fileselect(path) [eval file join [lrange $spath 1 end]]
		set fileselect(dir) [file dirname $fileselect(dir)]
		if {[string compare $fileselect(dir) "."] == 0} {
		    set fileselect(dir) [pwd]
		}
		fileselectOK
		return
	    }
	    set path [file join $fileselect(dir) $fileselect(path)]
	    set fileselect(dir) [file dirname $path]
	}] {
	    # Pre 4.1 final code
	    set path [fileselectOKsetupPre4.1]
	    if {$path == ""} {
		return
	    }
	}
	if [file isdirectory $path] {
		if {$takedir && [string match dir $fileselect(exist)]} {
			set fileselect(path) $path
			set fileselect(done) 1
			return
		}
		set fileselect(path) {}
		fileselectList $path
		return
	}
	if [file exists $path] {
		set fileselect(path) $path
		set fileselect(done) 1
		return
	}
	# Neither a file or a directory.
	# See if glob will find something
	if [catch {glob $path} files] {
		# No, perhaps the user typed a new
		# absolute pathname
		if [catch {glob $fileselect(path)} ignore] {
			# Nothing good
			if {$fileselect(exist) == "file"} {
				# Attempt completion
				fileselectComplete
			} elseif {($fileselect(exist) == "")} {
				# Allow new name
				set fileselect(path) $path
				set fileselect(done) 1
			}
			return
		} else {
			# OK - try again
			set fileselect(dir) [file dirname $fileselect(path)]
			set fileselect(path) [file tail $fileselect(path)]
			fileselectOK
			return
		}
	} else {
		# Ok - current directory is ok,
		# either select the file or list them.
		if {[llength [split $files]] == 1} {
			set fileselect(path) $files
			fileselectOK
		} else {
			set fileselect(dir) [file dirname [lindex $files 0]]
			fileselectList $fileselect(dir) $files
		}
	}
}
proc fileselectCancel {} {
	global fileselect
	set fileselect(done) 1
	set fileselect(path) {}
}

proc fileselectClick { lb y } {
	# Take the item the user clicked on
	global fileselect
	set fileselect(path) [$lb get [$lb nearest $y]]
}
proc fileselectTake { lb } {
	# Take the currently selected list item
	global fileselect
	set fileselect(path) [$lb get [$lb curselection]]
}

proc fileselectComplete {} {
	global fileselect

	# Do file name completion
	# Nuke the space that triggered this call
	set fileselect(path) [string trim $fileselect(path) \t\ ]

	if [catch {
	    set path [file join $fileselect(dir) $fileselect(path)]
	    set dir [file dirname $path]
	    set tail [file tail $path]
	    set pat $path*
	}] {
	    # Figure out what directory we are looking at
	    # dir is the directory
	    # tail is the partial name
	    if {[string match /* $fileselect(path)]} {
		    set dir [file dirname $fileselect(path)]
		    set tail [file tail $fileselect(path)]
	    } elseif [string match ~* $fileselect(path)] {
		    if [catch {file dirname $fileselect(path)} dir] {
			    return	;# Bad user
		    }
		    set tail [file tail $fileselect(path)]
	    } else {
		    set path $fileselect(dir)/$fileselect(path)
		    set dir [file dirname $path]
		    set tail [file tail $path]
	    }
	    set pat $dir/$tail*
	}
	# See what files are there
	set files [glob -nocomplain $pat]
	if {[llength [split $files]] == 1} {
		# Matched a single file
		set fileselect(dir) $dir
		set fileselect(path) [file tail $files]
	} else {
		if {[llength [split $files]] > 1} {
			# Find the longest common prefix
			set l [expr [string length $tail]-1]
			set miss 0
			# Remember that files has absolute paths
			set file1 [file tail [lindex $files 0]]
			while {!$miss} {
				incr l
				if {$l == [string length $file1]} {
					# file1 is a prefix of all others
					break
				}
				set new [string range $file1 0 $l]
				foreach f $files {
					if ![string match $new* [file tail $f]] {
						set miss 1
						incr l -1
						break
					}
				}
			}
			set fileselect(path) [string range $file1 0 $l]
		}
		fileselectList $dir $files
	}
}
proc fileselectParent {} {
    global tcl_platform
    if {$tcl_platform(platform) == "macintosh"} {
	return ::
    } else {
	return ../
    }
}
proc fileselectIsParent? {component} {
    global tcl_platform
    if {$tcl_platform(platform) == "macintosh"} {
	return [string match :: $component]
    } else {
	return [regexp {^\.\./?} $component]
    }
}
proc fileselectShowDir {component} {
    global tcl_platform
    if {$tcl_platform(platform) == "macintosh"} {
	return $component:
    } else {
	return $component/
    }
}

# browser.tcl
# Routines to interface to Web Browsers.

# WebEdit is a Tk application so we can just send it a Tcl command.

proc WebEdit {url} {
    set interps [winfo interps]
    set ix [lsearch -glob $interps webedit*]
    if {$ix >= 0} {
	send [lindex $interps $ix] [list Url_DisplayNew $url]
	LogUser "WebEdit is displaying $url"
    } else {
	exec webedit2.0 $url &
	LogUser "Starting WebEdit"
    }
}

# Netscape has a backdoor that uses its -remote function to send
# an openURL command to a running netscape process.

proc Netscape {url} {
    if [ catch { exec netscape -remote openURL($url)} tmp ] {
	if { [ string first "not running on" $tmp ] != -1 } {
	    exec netscape $url &
	    LogUser "Starting netscape"
	}
    } else {
	LogUser "Netscape is displaying $url"
    }
}
# Mosaic has a backdoor that uses a file in /tmp to contain a URL.
# The name of the file is /tmp/Mosaic.pid
# and you send mosaic a SIGUSER1 to get it to look at the file

set uri(mosaicApp) mosaic

proc Mosaic {url} {
    Mosaic_Load $url
}
proc Mosaic_Load { url {newwin goto} } {
    global mosaic uri
    if ![info exists mosaic(pid)] {
	set mosaic(pid) [PsByName $uri(mosaicApp)]
	if {[string length $mosaic(pid)] == 0} {
	    LogUser "Starting $uri(mosaicApp)"
	    set mosaic(pid) [exec $uri(mosaicApp) $url &]
	    return
	} else {
	    LogUser "$uri(mosaicApp) running with pid $mosaic(pid)"
	}
    }
    if [catch {open /tmp/Mosaic.$mosaic(pid) w} out] {
	error $out
    }
    puts $out $newwin
    puts $out $url
    close $out
    catch {unset mosaic(fail)}
    if [catch {exec kill -USR1 $mosaic(pid)} err] {
	if [info exists mosaic(fail)] {
	    LogUser "Cannot signal xmosaic $mosaic(pid)"
	    unset mosaic(pid)
	    unset mosaic(fail)
	    error $err
	} else {
	    set mosaic(fail) $err
	    unset mosaic(pid)
	    Mosaic_Load $url
	}
    }
}
# tkerror.tcl
#
# tkerror for webedit
#
# This is another example for you to look at.
# Again, it'll take some work before you can use it directly.
#

#
# tkerror --
#	This is the handler for background errors that arise
#	from commands bound to keystrokes and menus.  A
#	toplevel message widget is used to display $errorInfo

proc tkerror { msg } {
    global errorInfo
    global maintainer

    set font fixed
    set base ".errorInfo"
    set title "Error Info"
    if [info exists errorInfo] {
	set savedErrorInfo $errorInfo
    } else {
	set savedErrorInfo {no errorInfo}
    }
    # Create a toplevel to contain the error trace back
    if [catch {
	# Choose a unique name
	for {set x 1} {$x<10} {set x [expr $x+1]} {
	    if {! [winfo exists $base-$x]} {
		break
	    }
	}
	set title $title-$x
	set name $base-$x

	toplevel $name -bd 2
	wm title $name $title
	wm group $name .
	wm minsize $name 20 5
    
	frame $name.buttons
	pack $name.buttons -side top -fill x
    
	button $name.buttons.quit -text "Dismiss" -command [list destroy $name]
	pack append $name.buttons $name.buttons.quit {left}
	if [info exists maintainer] {
	    button $name.buttons.mailto -text "Mail to $maintainer" \
		-command [list MailError $name $errorInfo]
	    pack append $name.buttons $name.buttons.mailto {right}
	}
	global widgetText TextType

	message $name.ex -font $font -aspect 1000 -text \
"Please type a few words of explanation before
pressing the Mail to button, or just Dismiss me."
	pack $name.ex -side top -fill x
	text $name.user -font $font -width 60 -bd 2 -relief raised
	$name.user configure -height 5
	$name.user insert end "What happened: "
	$name.user tag add sel 1.0 1.14
	focus $name.user
	pack $name.user -side top -fill both -expand true
	$name.user mark set hlimit 1.0
	set widgetText($name.user,extend) 0
	set widgetText($name.user,geo) {}
	set TextType($name.user) text

	frame $name.msg
	pack $name.msg -side top -fill both -expand true

	text $name.msg.t -font $font -width 60 -bd 2 -relief raised \
		-setgrid true -yscrollcommand [list $name.msg.sy set]
	scrollbar $name.msg.sy -orient vertical -command [list $name.msg.t yview]
	set numLines [llength [split $errorInfo \n]]
	if {$numLines > 20} {
	    set numLines 20
	}
	$name.msg.t configure -height $numLines
	$name.msg.t insert end $errorInfo
	pack $name.msg.sy -side right -fill y
	pack $name.msg.t -side left -fill both -expand true
	set widgetText($name.msg.t,extend) 0
	set widgetText($name.msg.t,geo) {}
	set TextType($name.msg.t) text

	tkwait visibility $name

    }] {
	Stderr "tkrror: $msg"
	Stderr "*** TCL Trace ***"
	Stderr $savedErrorInfo
   }
}
proc bgerror [info args tkerror] [info body tkerror]

proc MailError { w errInfo } {
    global maintainer argv argv0 webedit
    if [catch {open /tmp/error.[pid] w} out] {
	Stderr "Cannot open /tmp/error.[pid]"
	return
    }
    if [catch {
	global env tk_version
	puts $out "To: $maintainer"
	puts $out "Subject: $argv0 error"
	puts $out ""
	puts $out "Date [clock format [clock seconds] -format %C]"
	if [info exists env(USER)] {
	    puts $out "$env(USER) got an error"
	}
	puts $out "Image Map Editor $ime(version)"
	puts $out "ARGS $argv"
	puts $out "TK version $tk_version"
	puts $out "TCL version [info tclversion]"
	catch {exec uname -a} uname
	puts $out "$uname"
	puts $out ""
	puts $out [$w.user get 1.0 end]
	puts $out ""
	puts $out $errInfo
	close $out
    } msg] {
	Stderr "/tmp/error.[pid] $msg"
	return
    }
    if [catch {
	exec /usr/lib/sendmail $maintainer < /tmp/error.[pid]
    } msg] {
	Stderr "sendmail error: $msg"
    } else {
	Stderr "Mailed report to $maintainer"
	destroy $w
    }
    catch {rm -f /tmp/error.[pid]}
}

proc Stderr {string} {
    catch {puts stderr $string}
}

# From dialog.tcl

proc DialogConfirm {parent frame msg {okProc { }} {cancelProc { }} {ok OK} {cancel Cancel}} {
    if {[string compare $parent "."] == 0} {
	set self $frame
    } else {
	set self $parent$frame
    }
    global $self.status
    if [winfo exists $self] {
	set $self.status 0	;# so other dialog cancels
	eval $cancelProc		;# so we cancel
	catch {destroy $self}
	return 0
    }
    set f [frame $self -bd 4 -relief ridge -class Dialog]
    message $f.msg -text $msg -aspect 1000
    set b [frame $f.b]
    set $self.status 0
    button $b.ok -text $ok -command [list set $self.status 1]
    button $b.cancel -text $cancel -command [list set $self.status 0]
    pack $f.msg $f.b -side top -fill x -padx 10
    pack $b.ok -side left -padx 10 -pady 10
    pack $b.cancel -side right -padx 10 -pady 10
    place $f -in $parent -relx .5 -rely .5 -anchor center
    tkwait visibility $f
    grab $f
    tkwait variable $self.status
    catch {
	grab release $f
	focus $f
	destroy $f
    }
    if [set $self.status] {
	eval $okProc
	return 1
    } else {
	eval $cancelProc
	return 0
    }
}
proc DialogInfo {parent msg } {
    if {[string compare "." $parent] == 0} {
	set self .dialoginfo
    } else {
	set self $parent.dialoginfo
    }
    global $self.status
    set f [frame $self -bd 4 -relief ridge -class Dialog]
    message $f.msg -text $msg -aspect 1000 -justify center
    set b [frame $f.b]
    set $self.status 0
    button $b.ok -text OK -command "destroy $self"
    pack $f.msg $f.b -side top -fill x -padx 10
    pack $b.ok -side top -padx 10 -pady 10
    place $f -in $parent -relx .5 -rely .5 -anchor center
    tkwait visibility $f
    grab $f
    tkwait window $self
    focus $parent
}

######################## Run the application

set file ""
foreach {flag value} $argv {
    switch -- $flag {
	-help { Usage ; exit 0 }
	-image { set ime(imagefile) $value }
	-conf { set ime(config) $value }
	default { set file $flag ; break }
    }
}
fileselectResources
if [catch {IME_Init . $file} err] {
    Stderr $err
}

