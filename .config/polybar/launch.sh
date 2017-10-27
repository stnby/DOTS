#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar
MONITOR=HDMI-0 polybar main

#feh --bg-scale ~/.config/wall.png
echo "Bars launched..."