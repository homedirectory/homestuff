#!/usr/bin/env sh

item_name="kblayout"

sketchybar                                                \
    --add item ${item_name} right                          \
    --set ${item_name}                                     \
    icon="" \
    icon.font="$ICON_REGULAR_FONT" \
    icon.padding_right=5 \
    label="?" \
    label.padding_right=15 \
    label.padding_left=0 \
    script="${PLUGINS_DIR}/kblayout.sh" \
    --add event input_change 'AppleSelectedInputSourcesChangedNotification' \
    --subscribe ${item_name} \
    system_woke input_change
