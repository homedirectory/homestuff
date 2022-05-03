#!/usr/bin/env sh

item_name="window_title"

sketchybar                                                \
    --add event window_focus                                \
    --add event title_change                                \
    --add event reload \
    --add item ${item_name} center                          \
    --set ${item_name}                                      \
    icon=                                           \
    icon.padding_left=10                                  \
    icon.padding_right=5 \
    label="-" \
    label.padding_right=10                                \
    script="${PLUGINS_DIR}/window_title.sh" \
    --subscribe ${item_name}                                \
    window_focus                                          \
    front_app_switched                                    \
    space_change                                          \
    title_change \
    reload

#sketchybar --trigger reload NAME=${item_name} INFO=$(yabai active-window | jq -r ".app")

sketchybar                                                \
    --add bracket center                                    \
    ${item_name}                                          \
    --set center                                            \
    background.color=${BAR_COLOR}                       \
    background.border_color=${BRACKET_HIGHLIGHT_COLOR}   \
    background.border_width=0                             \
    background.corner_radius=8

