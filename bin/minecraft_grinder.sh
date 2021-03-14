#!/usr/bin/env bash

while true; do
        clear
        window_name="$(xdotool getwindowfocus getwindowname)"
        if [[ "$window_name" =~ "Minecraft" ]]; then
                xdotool mousedown 1
                sleep 0.5
                xdotool mouseup 1
        else
                echo "Minecraft window not focused"
        fi
        sleep 0.5
done
