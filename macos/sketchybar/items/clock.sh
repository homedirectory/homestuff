#!/usr/bin/env sh

sketchybar                                                \
    --add event window_focus                                \
    --add event title_change                                \
    --add item clock right                          \
    --set clock                                      \
    label="" \
    label.padding_right=10                                \
    label.padding_left=0 \
    updates=on \
    update_freq=5 \
    script="${PLUGINS_DIR}/clock.sh"

sketchybar                                                \
    --add bracket right                                    \
    clock                                          \
    --set right                                            \
    background.color=${BAR_COLOR}                       \
    background.border_color=${BRACKET_HIGHLIGHT_COLOR}   \
    background.border_width=0                             \
    background.corner_radius=8

