#!/bin/bash

LOGFILE="$HOME/.config/polybar/errors.log"

killall -q polybar

while pgrep -x polybar > /dev/null; do sleep 1; done

polybar top -c $HOME/.config/polybar/config1.ini 2> $LOGFILE &
