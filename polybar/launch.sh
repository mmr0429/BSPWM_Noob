#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar, using default config location ~/.config/polybar/config
polybar example &

echo "Polybar launched..."
xdo lower -N "polybar-example_DP-1" &
xdo lower -N Polybar
