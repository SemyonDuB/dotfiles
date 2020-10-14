#!/bin/bash

# Close all polybar bars
killall -q polybar

# Wait full close all bars
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Execute polybar in ~/.config/polybar/config
polybar example &

echo "Polybar load..."
