#!/usr/bin/env sh

curl -s http://wttr.in/Serbia.Nis > /tmp/weather 2>&1
i3-msg "exec --no-startup-id setsid -f st -c weather_floating -e less -Srf /tmp/weather" 2>/dev/null 1>/dev/null
