#!/bin/bash

# ffmpeg -f x11grab -r 30 -s 1920x1080 -i :0.0+1920,0 -vcodec rawvideo -vf hflip -pix_fmt yuv420p -threads 0 -f v4l2 /dev/video0
help="
\n\t-h = help\n
\t-r = set output resolution | default: 1920x1080)\n
\t-x = offset X | default: 0\n
\t-y = offset Y | default: 0\n
\t-h = help\n
"
x=0
y=0
res='1920x1080'

while getopts x:y:r:h flag
	do
		case "${flag}" in
		x)
			x=${OPTARG};;
		y)
			y="${OPTARG}";;
		r)
			res="${OPTARG}";;

	    *) echo -e $help;;
	    esac
	done

ffmpeg -f x11grab -r 30 -s "$res" -i :0.0+"$x","$y" -vcodec rawvideo -vf hflip -pix_fmt yuv420p -threads 0 -f v4l2 /dev/video0
