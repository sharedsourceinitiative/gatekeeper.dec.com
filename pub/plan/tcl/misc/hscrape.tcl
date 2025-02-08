# hscrape.tcl --
#
#	Scrape information off of an HTML page.
#

package provide hscrape 1.0
package require http 2.0
package require html

# Hack to load old HM* procedures

set here [file dirname [info script]]
#foreach f [glob [file join $here html*.tcl]] {
#    puts stderr "Source $f"
#    source $f
#}

namespace eval hscrape {
    namespace export *

    # Text after previous tag

    variable lastText
}

# hscrape::getForm --
#
#	Pull out the information about a form given its URL
#
# Arguments:
#	url	The URL that contains a FORM to scrape
#	args	Additional arguments to http::geturl
#
# Results:
#	A name, value list.  The first name/value pairs are: 
#		url	The target URL of the form
#		method	GET or POST
#	The rest of the name, values are form elements.  The value
#	is either empty or a list of possible values.

proc hscrape::getForm {url args} {
    
    # Load the HTML from the form's URL

    set token [eval [list http::geturl $url -timeout 30000] $args]
    http::wait $token
    set status [http::status $token]
    if {"$status" != "ok"} {
	http::cleanup $token
	return -code error "Bad URL: $status"
    }
    set html [http::data $token]
    http::cleanup $token
    
    # Parse the HTML and look for form elements

    hscrape::parse $html [list hscrape::tagDriver ::hscrape::formParse::]

    return [hscrape::formParse::Dump]
}

# hscrape::parse --
#
#	Turn HTML into TCL commands.  This is Steve Uhler's HMparse_html,
# 	cleaned up slightly for 8.3
#
# Arguments:
#	html    A string containing an html document
#	cmd	A command to run for each html tag found.  This is called like
#		cmd tag slash param freetext
#		where tag is the HTML tag, and slash is "" or "/"
#		param is the HTML tag parameters, and
#		freetext is the text up to the next HTML tag
#	start	The name of the dummy html start/stop tags
#
# Side Effects:
#	This calls cmd for each HTML tag.

proc hscrape::parse {html {cmd hscrape::test} {start start}} {
	regsub -all \{ $html {\&ob;} html
	regsub -all \} $html {\&cb;} html
	regsub -all {\\} $html {\&bsl;} html
	set w " \t\r\n"	;# white space
	proc HMcl x {return "\[$x\]"}
	set exp <(/?)([HMcl ^$w>]+)[HMcl $w]*([HMcl ^>]*)>
	set sub "\}\n$cmd {\\2} {\\1} {\\3} \{"
	regsub -all $exp $html $sub html
	eval "$cmd {$start} {} {} \{$html\}"
	eval "$cmd {$start} / {} {}"
}

# hscrape::test --
#
#	Sample parser.
#
# Arguments:
#	tag	HTML tag
#	slash	Either "" or a /
#	param	HTML parameters
#	text	Text up to next tag

proc hscrape::test {tag slash param text} {
    puts stderr [list $tag $slash $param $text]
}

# hscrape::tagDriver --
#
#	Sample parser that calls a Tcl command based on the HTML tag.
#
# Arguments:
#	stem	Base of TCL Command name
#	tag	HTML tag
#	slash	Either "" or a /
#	param	HTML parameters
#	text	Text up to next tag

proc hscrape::tagDriver {stem tag slash param text} {
    variable lastText
    set key $stem[string tolower $slash$tag]
    if {[info commands $key] != ""} {
	$key $param $text
    }
    set lastText $text
}

# The hscrape::formParse
# namespace keeps the state of the form parsing scraper.

namespace eval hscrape::formParse {
    variable actionUrl
    variable method
    variable varList
    variable form
    variable type
}

# hscrape::formParse::Element --
#
#	Add information about a form element
#
# Arguments:
#	name	The form element name
#	value	A possible value
#	t	The form element type
#	string	Text "near" the form element

proc hscrape::formParse::Element {name value t string} {
    variable varList
    variable form
    variable type
    variable context

    set ix [lsearch -exact $varList $name]
    if {$ix < 0} {
	lappend varList $name
    }
    lappend form($name) $value
    set type($name) $t
    set context($name,$value) $string
}

# hscrape::formParse::start --
#
#	Pseudo-tag called at start and end of parsing.
#
# Arguments:
#	param	The tag parameters
#	text	The text to the next tag

proc hscrape::formParse::start {param text} {
    foreach x {actionUrl method form type varList} {
	upvar ::hscrape::formParse::$x var
	if {[info exist var]} {
	    unset var
	}
    }
    set ::hscrape::formParse::varList {}
    set ::hscrape::lastText {}
}

# hscrape::formParse::form --
#
#	Scrape an <form> tag
#
# Arguments:
#	param	The tag parameters
#	text	The text to the next tag

proc hscrape::formParse::form {param text} {
    variable method
    variable actionUrl

    if {[info exist method]} {
	error "Detected multiple forms on the page"
    }
    if {![html::extractParam $param method]} {
	set method get
    }
    if {![html::extractParam $param action actionUrl]} {
	set actionUrl $formUrl
    }
}

# hscrape::formParse::input --
#
#	Scrape an <input> tag
#
# Arguments:
#	param	The tag parameters
#	text	The text to the next tag

proc hscrape::formParse::input {param text} {
    variable form
    variable type

    if {![html::extractParam $param type t]} {
	set t text
    }
    if {![html::extractParam $param name]} {
	return	;# Ignore nameless form elements
    }
    if {![html::extractParam $param value]} {
	set value ""
    }
    Element $name $value $t $::hscrape::lastText
}

# hscrape::formParse::select --
#
#	Scrape a <select> tag
#
# Arguments:
#	param	The tag parameters
#	text	The text to the next tag

proc hscrape::formParse::select {param text} {
    variable current

    if {![html::extractParam $param name]} {
	return	;# Ignore nameless form elements
    }
    set current $name
}

# hscrape::formParse::/select --
#
#	Scrape a </select> tag
#
# Arguments:
#	param	The tag parameters
#	text	The text to the next tag

proc hscrape::formParse::/select {param text} {
    variable current

    if {[info exist current]} {
	unset current
    }
}

# hscrape::formParse::option --
#
#	Scrape an <option> tag
#
# Arguments:
#	param	The tag parameters
#	text	The text to the next tag

proc hscrape::formParse::option {param text} {
    variable form
    variable current

    if {![info exist current]} {
	return
    }
    if {![html::extractParam $param value]} {
	set value [string trim $text]
    }
    Element $current $value select $text
}

# hscrape::formParse::textarea --
#
#	Scrape a <textarea> tag
#
# Arguments:
#	param	The tag parameters
#	text	The text to the next tag

proc hscrape::formParse::textarea {param text} {
    variable form
    variable lastText

    if {![html::extractParam $param name]} {
	return	;# Ignore nameless form elements
    }
    Element $name $text textarea $lastText
}

# hscrape::formParse::Dump --
#
#	Return the results of the form parser
#
# Arguments:
#	None
#
# Results:
#	 Those for hscrape::getForm

proc hscrape::formParse::Dump {} {
    variable varList
    variable form
    variable type
    variable method
    variable actionUrl

    set valueList {}
    foreach name $varList {
	lappend valueList $name $form($name)
    }
    return [list $actionUrl $method $valueList]
}
