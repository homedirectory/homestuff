#!/usr/bin/env sh

item_name="battery"

sketchybar \
    --add item ${item_name} right \
    --set ${item_name} \
    label="" \
    label.padding_right=15 \
    label.padding_left=0 \
    updates=on \
    update_freq=30 \
    script="${PLUGINS_DIR}/battery.sh" \
    --subscribe ${item_name} \
    system_woke
