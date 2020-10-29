#!/usr/bin/env /sh

WIN=$(xdotool getwindowfocus getwindowgeometry --shell | grep -e X -e Y -e WIDTH -e HEIGHT | cut -d '=' -f2-)

IFS=$'\n'
set $WIN
#X=$1
#Y=$2
#W=$3
#H=$4

X=$(($1 + ($3 / 2)))
Y=$(($2 + ($4 / 2)))


xdotool mousemove $X $Y
