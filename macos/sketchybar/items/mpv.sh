#!/usr/bin/env sh

PLUGIN=${PLUGINS_DIR}/mpv.sh

sketchybar --add item mpv.next right \
    --set mpv.next \
        icon="" \
        icon.padding_left=5                                  \
        icon.padding_right=5                                \
        click_script=$PLUGIN

sketchybar --add item mpv.pause right \
    --set mpv.pause \
        icon="$(NAME="mpv.pause" $PLUGIN icon)" \
        icon.padding_left=5                                  \
        icon.padding_right=5                                \
        click_script=$PLUGIN

sketchybar --add item mpv.prev right \
    --set mpv.prev \
        icon="" \
        icon.padding_left=5                                  \
        icon.padding_right=5                                \
        click_script=$PLUGIN

sketchybar --add item mpv.title right \
    --set mpv.title \
        label="$(NAME="mpv.title" $PLUGIN label)" \
        icon.padding_left=5                                  \
        label.padding_right=20                                \
        click_script=$PLUGIN
        #icon="" \

sketchybar --add item mpv.mute right \
    --set mpv.mute \
        icon="$(NAME="mpv.mute" $PLUGIN icon)" \
        icon.padding_left=5 \
        click_script=$PLUGIN


############## BRACKETS ######################
sketchybar                                                \
  --add bracket right \
    mpv.next   \
    mpv.pause   \
    mpv.prev   \
    mpv.title \
    mpv.mute \
  --set right \
    background.color=${BAR_COLOR}                       \
    background.border_color=${BRACKET_HIGHLIGHT_COLOR}   \
    background.border_width=0                             \
    background.corner_radius=8



