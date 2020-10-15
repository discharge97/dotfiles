#!/bin/bash

help="
\n\t-h = help\n
\t-t = toggle volume\n
\t-V = get volume\n
\t-v <amount ex. 5%+ or 5%->= set volume by amount\n"

while getopts htVv: flag
	do
	    case "${flag}" in
	        v) amixer -D pulse sset Master ${OPTARG};;
			V) vol=`awk '/%/ {gsub(/[\[\]]/,""); print $5}' <(amixer sget Master | grep Left) | sed -r 's/[%]+//g'`
				#echo $vol
				mute=`amixer sget Master | grep Left | grep off`
				if [ ! -z "$mute" ]
				then
					vol="🔇 ##%";
				elif [ $vol == 50 ]
				then
					vol="🔉 $vol%";
				elif [ $vol -gt 50 ]
				then
					vol="🔊 $vol%";
				else
					vol="🔈 $vol%";

				fi

			echo $vol;;

	        t) amixer -D pulse set Master 1+ toggle;;
	        *) echo -e $help;;
	    esac
	done
