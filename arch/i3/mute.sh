#!/bin/bash

ismuted=$(amixer -D pulse get Master | egrep -i "^\s*front left:.*\[off\]")

if [[ -z "$ismuted" ]]; then
    amixer -D pulse sset Master mute
else
    amixer -D pulse sset Master unmute
fi

