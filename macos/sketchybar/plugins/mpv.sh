#!/bin/bash

MPV_HOME="/Users/janken/.config/mpv"
MPV_SH="${MPV_HOME}/mpv.sh"
SOCKET="${MPV_HOME}/socket"

MPV_ENV="$HOME/.config/sketchybar/env/mpv"

get_var() {
    VAR_NAME=$(echo "$1" | sed "s/\./\\\./g")
    echo $(grep "^${VAR_NAME}=" $MPV_ENV | cut -d "=" -f 2)
}

set_var() {
    VAL=$2

    if [[ ! -f $MPV_ENV ]]; then
        echo "${1}=${VAL}" >> $MPV_ENV
    else
        VAR_NAME=$(echo "$1" | sed "s/\./\\\./g")
        CURR_VAR_NAME=$(grep "^${VAR_NAME}=" $MPV_ENV | cut -d "=" -f 2)

        if [[ -z "$CURR_VAR_NAME" ]]; then
            echo "${$1}=${VAL}" >> $MPV_ENV
        else 
            sed -i '' "s/\(^${VAR_NAME}=\).*$/\1${VAL}/g" $MPV_ENV
        fi
    fi
}

title() {
    LABEL=$(${MPV_SH} get title_artist)

    if [[ "$1" == "label" ]]; then
        # startup
        set_var mpv.title title_artist
        echo $LABEL
    else
        CURRENT=$(get_var mpv.title)
        if [[ "$CURRENT" == "title_artist" ]]; then
            LABEL=$(${MPV_SH} get album)
            set_var mpv.title album
        elif [[ "$CURRENT" == "album" ]]; then
            set_var mpv.title title_artist
        fi

        sketchybar --set mpv.title label="$LABEL"
    fi
    echo $MODIFIER > /tmp/mpv.log
}

pause() {
    if [[ "$1" == "icon" ]]; then
        if [[ $(${MPV_SH} get pause) == "true" ]]; then
            echo "" 
        else 
            echo ""
        fi
    else
        ICON=$(sketchybar --query mpv.pause | jq -r ".text.icon")

        if [[ "$ICON" == "" ]]; then
            ICON=""
        else
            ICON=""
        fi

        sketchybar --set mpv.pause icon="$ICON"
        echo "cycle pause" | socat - "$SOCKET"
    fi
}

mute() {
    MUTE_ICON=""
    UNMUTE_ICON=""

    if [[ "$1" == "icon" ]]; then
        if [[ $(${MPV_SH} get mute) == "true" ]]; then
            echo $UNMUTE_ICON
        else 
            echo $MUTE_ICON
        fi
    else
        # the icon is changed based on the current icon
        # TODO? change the icon based on current STATE
        ICON=$(sketchybar --query mpv.mute | jq -r ".text.icon")

        if [[ "$ICON" == "$MUTE_ICON" ]]; then
            ICON=$UNMUTE_ICON
        else 
            ICON=$MUTE_ICON
        fi

        sketchybar --set mpv.mute icon="$ICON"
        echo "cycle mute" | socat - "$SOCKET"
    fi
}

if [[ "$NAME" == "mpv.pause" ]]; then
    pause "$@"
elif [[ "$NAME" == "mpv.title" ]]; then
    title "$@"
elif [[ "$NAME" == "mpv.next" ]]; then
    echo "playlist-next" | socat - "$SOCKET"
    sleep 0.5
    title "$@"
elif [[ "$NAME" == "mpv.prev" ]]; then
    echo "playlist-prev" | socat - "$SOCKET"
    sleep 0.5
    title "$@"
elif [[ "$NAME" == "mpv.mute" ]]; then
    mute "$@"
fi
