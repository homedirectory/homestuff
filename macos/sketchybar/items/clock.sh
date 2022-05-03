#!/usr/bin/env sh

item_name="clock"

sketchybar                                                \
    --add item ${item_name} right                          \
    --set ${item_name}                                      \
    label="" \
    label.padding_right=10                                \
    label.padding_left=0 \
    updates=on \
    update_freq=5 \
    script="${PLUGINS_DIR}/clock.sh" \
    --subscribe ${item_name} \
    system_woke
