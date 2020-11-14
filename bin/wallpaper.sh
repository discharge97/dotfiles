#!/bin/bash

help="
\n\t-h = help\n
\t-R = re-SET wallpaper\n
\t-s = set wallpaper\n
"

while getopts ghRs: flag
	do
		case "${flag}" in
		s)
			feh --bg-fill ${OPTARG}
			echo ${OPTARG} > ~/bin/wall.path;;
		R)
			wall="$(cat ~/bin/wall.path)"
			feh --bg-fill "${wall}";;

		g) path="$(sxiv -to ~/Pictures/wallpaper/)"
			if [ -f "$path" ]; then
				echo "$path" > ~/bin/wall.path
				feh --bg-fill "$path"
			else
				echo -e "Image path not selected! \nUse 'm' key to select an image."
			fi
			;;

	    *) echo -e $help;;
	    esac
	done
