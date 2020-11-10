#!/bin/bash

help="
\n\t-h = help\n
\t-R = re-SET wallpaper\n
\t-s = set wallpaper\n
"

while getopts hRs: flag
	do
	    case "${flag}" in
	        s)
			feh --bg-fill ${OPTARG}
			echo ${OPTARG} > ~/bin/wall.path;;
		R)
			wall=`cat ~/bin/wall.path`
			feh --bg-fill "${wall}";;

	        *) echo -e $help;;
	    esac
	done
