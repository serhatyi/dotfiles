#! /bin/sh

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar bottom &

if[[ $(xrandr -q | grep 'HDMI conntected')]]; then
    polybar bottom_external &
fi
