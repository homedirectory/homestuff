#!/usr/bin/env sh

sketchybar                                                \
    --add event window_focus                                \
    --add event title_change                                \
    --add event reload \
    --add item window_title center                          \
    --set window_title                                      \
    icon=                                           \
    icon.padding_left=10                                  \
    label.padding_right=10                                \
    script="${PLUGINS_DIR}/window_title.sh" \
    --subscribe window_title                                \
    window_focus                                          \
    front_app_switched                                    \
    space_change                                          \
    title_change \
    reload

#sketchybar --trigger reload NAME=window_title INFO=$(yabai active-window | jq -r ".app")

sketchybar                                                \
    --add bracket center                                    \
    window_title                                          \
    --set center                                            \
    background.color=${BAR_COLOR}                       \
    background.border_color=${BRACKET_HIGHLIGHT_COLOR}   \
    background.border_width=0                             \
    background.corner_radius=8

