#!/usr/bin/env sh

item_name="date"

sketchybar \
    --add item ${item_name} right \
    --set ${item_name} \
    label="date" \
    label.padding_right=10 \
    label.padding_left=0 \
    updates=on \
    update_freq=3600 \
    script="${PLUGINS_DIR}/date.sh" \
    --subscribe ${item_name} \
    system_woke
