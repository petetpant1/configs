#!/usr/bin/env sh

killall -q polybar

while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

#polybar eDP1 &
polybar HDMI2 &

echo "polybar launched..."


