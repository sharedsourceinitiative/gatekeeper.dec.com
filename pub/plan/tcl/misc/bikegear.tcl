# bike.tcl
# This program computes the effective wheel diameter of a bike given its
# gear setup.  For example, if the effective diameter is 100 inches, it is
# as if you have an old-fashioned bike with a 100 inch diameter front wheel
# and the pedals are connected right to its axle.  The bigger the diameter
# the harder it is to pedal.

option add *Entry.width 2
option add *background gray75
option add *highlightBackground gray75
. config -borderwidth 10 -bg gray75

if [info exists embed_args] {
    # Don't resize within plugin
    grid propagate . false
    set maxwidth $embed_args(width)
} else {
    set maxwidth 400
}
message .msg -text "Bicycle Gear Ratios" -aspect 2000

# Every text entry widget can be associated with a Tcl variable.  In these cases
# front(n) and back(n) are the number of gears at the front and back of the bike.
entry .efront -textvariable front(n)
entry .eback -textvariable back(n)

label .lfront -text "# front gears"
label .lback -text "# back gears"

entry .size -textvariable size
label .lsize -text "Wheel diameter"
set size 27

# Hitting Return in a text entry recomputes the graph.
foreach e {.size .efront .eback} {
    bind $e <Return> UpdateRatios
    bind $e <FocusOut> UpdateRatios
    bind $e <FocusIn> {%W select from 0 ; %W select to end}
}
button .doit -text Recompute -command UpdateRatios

# The grid geometry manager is used for the main arrangement of widgets
grid .msg  -columnspan 3        -sticky news
grid .lfront .efront		-sticky w
grid .lback  .eback		-sticky w
grid .lsize  .size .doit	-sticky w
grid .doit 			-sticky e

# When the number of gears is changed, the set of entries for each gear is re-created.
trace variable front(n) w UpdateFront
trace variable back(n) w UpdateBack

proc UpdateFront {args} {
    UpdateBoxes .front 1 front ff0000 110000
}
proc UpdateBack {args} {
    UpdateBoxes .back 2 back 0000ff 000011
}
proc UpdateBoxes {frame row varName color dColor} {
    # upvar creates a local name alias for a global variable (absolute scope #0)
    # In this case, 'var' is an alias for 'front' or 'back'
    upvar #0 $varName var
    catch {destroy $frame}
    if ![NumberOk var(n) 1 10] {
	return
    }
    # Make a horizontal stack of a label and several entries, using the packer
    frame $frame
    label $frame.teeth -text "# teeth"
    pack $frame.teeth -side left
    for {set i 0} {$i < $var(n)} {incr i} {
	entry $frame.$i -textvariable $varName\($i) -foreground #$color
	# Fade the text color from bright to black
	set color [format %06x [expr 0x$color - 0x$dColor]]
	pack $frame.$i -side left
	bind $frame.$i <Return> UpdateRatios
	bind $frame.$i <FocusOut> UpdateRatios
	bind $frame.$i <FocusIn> {%W select from 0 ; %W select to end}
    }
    # Position the horizontal stack in the main grid of widgets
    grid $frame -column 2 -row $row -sticky w
}
# Validate a number.  Returns 0 if there isn't a number in the variable.
proc NumberOk {varName min max} {
    upvar $varName var
    if {([string length [string trim $var]] == 0)} {
	return 0
    }
    if {[catch {expr $var}]} {
	set var ""
	return 0
    }
    if {$var < $min} {
	set var $min
    }
    if {$var > $max} {
	set var $max
    }
    return 1
}

# Set default values for the front and back gear configuration.
array set front {
    0 27
    1 40 
    2 50
}

set front(n) [expr [array size front] -1]
array set back {
    0 27
    1 21
    2 19
    3 17
    4 15
    5 13
} 
set back(n) [expr [array size back] -1]

# UpdateRatios displays a graph of the effective wheel diameter.
proc UpdateRatios {} {
    global front back
    # Find the minimum and maximum gear sizes in front and back.
    foreach name {front back} {
	# Here upvar creates an alias for a local variable (scope 0 frames up)
	upvar 0 $name array
	catch {unset array(max)}
	catch {unset array(min)}
	for {set n 0} {$n < $array(n)} {incr n} {
	    if {([string length [string trim $array($n)]] == 0) ||
		[catch {expr $array($n)}]} {
		    continue
	    }
	    if {![info exists array(min)] || ($array($n) < $array(min)) } {
		set array(min) $array($n)
	    }
	    if {![info exists array(max)] || ($array($n) > $array(max)) } {
		set array(max) $array($n)
	    }
	}
	if {![info exists array(max)] || ![info exists array(min)]} {
	    return
	}
    }
    # Find the bounds of the graph, rounded to 5
    set min [expr [Gearage $front(min) $back(max)]/5 * 5]
    set max [expr ([Gearage $front(max) $back(min)]+5)/5 * 5]
    set span [expr $max - $min]

    if [winfo exists .c] {
	.c delete all
    } else {
	canvas .c
    }
    global maxwidth
    set y 10
    set xoff 20
    set xscale [expr double($maxwidth-$xoff-35)/$span]
    set fcolor ff0000
    set df     110000
    for {set f 0} {$f < $front(n)} {incr f} {
	if ![NumberOk front($f) 3 1000] {
	    continue
	}
	# Create a horizontal line for each front gear, same color as text entry.
	.c create text 0 $y -text $front($f) -fill #$fcolor
	.c create line $xoff $y [expr $xscale*$span + $xoff] $y -fill #$fcolor
	set fcolor [format %06x [expr 0x$fcolor - 0x$df]]

	set bcolor 0000ff
	for {set b 0} {$b < $back(n)} {incr b} {
	    if ![NumberOk back($b) 3 1000] {
		continue
	    }
	    if [catch {Gearage $front($f) $back($b)} g] {
		continue
	    }
	    # Plot the points in the same color as rear wheel text.
	    set x [expr $xscale *($g-$min) +$xoff]
	    set id [.c create oval [expr $x-3] [expr $y-3] [expr $x+3] [expr $y+3] \
		-fill #$bcolor -tags "gearage=$g f=$f b=$b"]
	    set bcolor [format %06x [expr 0x$bcolor - 0x11]]
	}
	incr y 20
    }
    bind .c <ButtonPress-1> [list FeedbackOn %x %y]
    bind .c <Motion> [list FeedbackOn %x %y]
    bind .c <ButtonRelease-1> [list FeedbackOff]
    .c create text $xoff $y -text $min -anchor w
    .c create text [expr $xscale*$span+$xoff] $y -text $max -anchor e
    .c create text [expr ($xscale*$span+$xoff)/2] $y \
	-text "Effective Wheel Diameter" -anchor c
    # Size the canvas to fit the plot
    .c move all 10 10
    foreach {x1 y1 x2 y2} [.c bbox all] {}
    .c config -width [expr $x2 + 0] -height [expr $y2 +0]
    grid .c -row 4 -column 0 -columnspan 3
}
proc Gearage {f b} {
    global size
    expr round($f.0 / $b.0 * $size)
} 
# As the mouse moves over the plot, display the exact value for each point it crosses.
proc FeedbackOn {x y} {
    global feedback
    foreach id [.c find overlapping [expr $x-2] [expr $y-2] [expr $x+2] [expr $y+2]] {
	if [regexp {gearage=([0-9]+) f=([0-9]+) b=([0-9]+)} [.c itemconfigure $id -tags] junk g f b] {
	    FeedbackOff
	    foreach {x1 y1 x2 y2} [.c coords $id] {}
	    set feedback [.c create text $x1 $y1 -text $g -fill blue -anchor s]
	    .front.$f config -bg white
	    .back.$b config -bg white
	    lappend feedback $f $b
	    break
	}
    }
}
proc FeedbackOff {} {
    global feedback
    catch {.c delete [lindex $feedback 0]}
    catch {.front.[lindex $feedback 1] config -bg grey75}
    catch {.back.[lindex $feedback 2] config -bg grey75}
}
update	;# So auto-sizing works ok
UpdateRatios
