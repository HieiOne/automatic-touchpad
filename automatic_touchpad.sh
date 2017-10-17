#!/bin/bash
TID=$(xinput list | grep -i "Touchpad" | sed 's/\t/=/g' | cut -d"=" -f3)

if xinput list | grep -iq "Mouse" ; then
	xinput --disable "$TID" #mouse unplugged
else
	xinput --enable "$TID" #mouse plugged
fi
exit 0
