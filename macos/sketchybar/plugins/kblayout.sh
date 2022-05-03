#!/usr/bin/env bash

#KBNAME=$(defaults read $HOME/Library/Preferences/com.apple.HIToolbox.plist AppleSelectedInputSources | grep -o "\"KeyboardLayout Name\" = .*;" | sed "s/.*= \(.*\);/\1/" | tr -d '"')

layout=$(defaults read $HOME/Library/Preferences/com.apple.HIToolbox.plist AppleCurrentKeyboardLayoutInputSourceID)

lbl="$layout"

case "$layout" in
    "com.apple.keylayout.ABC")
        lbl="en";;
    "com.apple.keylayout.Ukrainian-PC")
        lbl="ua";;
esac

sketchybar -m --set $NAME label="$lbl" 
