#!/bin/sh -
#
# xlogout [-g geometry]
#
#  This uses the xmessage program to create a Xlogout type button
# The Logout button is created using the extremely versitile
# xmessage program available somewhere in the X contrib area.
# Also availabel is the program xclosedown which tries to close
# application windows nicely with `delete-window' before forcablly
# removeing them with `destroy-window'.
# 
#  The program is placed as the last item in a users Xsession script
# with the geometry position required, usally the lower right corner
#
# Example Usage:
#                      xlogout -g -5-5
#
# Anthony Thyssen      anthony@cit.gu.edu.au     16 June 1993
#
exit=
while [ ! "$exit" ]; do
  xmessage -name xlogout -title xlogout "$@" \
        -buttons "" -xrm '*message.borderWidth: 0' \
	-xrm '*Translations: #override <BtnDown>: exit(0)' \
	-xrm '*Font: -*-new cent*-bold-r-normal--24-*' \
	'Logout'
  [ $? -ne 0 ] && exit=true
  if [ ! "$exit" ]; then
    xmessage -name xlogout -title xlogout "$@" \
        -buttons 'Cancel:0,Logout:1' -xrm '*message.borderWidth: 0' \
	-xrm '*Font: -*-new cent*-bold-r-normal--18-*' \
	'Are You Sure?'
    [ $? -ne 0 ] && exit=true
  fi
done
# attempt to close all windows nicely if possible
# xclosedown
