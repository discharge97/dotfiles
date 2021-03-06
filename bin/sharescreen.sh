#!/bin/bash

# ffmpeg -f x11grab -r 30 -s 1920x1080 -i :0.0+1920,0 -vcodec rawvideo -vf hflip -pix_fmt yuv420p -threads 0 -f v4l2 /dev/video0
help="
\n\t-h = help\n
\t-r = set output resolution | default: 1920x1080)\n
\t-x = offset X | default: 0\n
\t-y = offset Y | default: 0\n
\t-R = set refresh rate | default: 30\n
\t-h = help\n
"
x=0
y=0
res='1920x1080'
rate=30

while getopts x:y:R:r:h flag
	do
		case "${flag}" in
		x)
			x=${OPTARG};;
		y)
			y="${OPTARG}";;
		r)
			res="${OPTARG}";;
		R)
			rate="${OPTARG}";;

	    *) echo -e $help;;
	    esac
	done

sudo modprobe v4l2loopback
ffmpeg -f x11grab -r $rate -s "$res" -i :0.0+"$x","$y" -vcodec rawvideo -pix_fmt yuv420p -threads 0 -f v4l2 /dev/video0
