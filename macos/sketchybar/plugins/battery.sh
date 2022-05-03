#!/usr/bin/env sh

ICON_FULL=""
ICON_THREE_QUARTERS=""
ICON_HALF=""
ICON_QUARTER=""
ICON_EMPTY=""
ICON_CHARGING=""

battery_percent() {
    system_profiler SPPowerDataType -json | jq ".SPPowerDataType[0].\"sppower_battery_charge_info\".\"sppower_battery_state_of_charge\""
}

is_charging() {
    val=$(system_profiler SPPowerDataType -json | jq -r ".SPPowerDataType[0].\"sppower_battery_charge_info\".\"sppower_battery_is_charging\"")
    if [[ "$val" == "TRUE" ]]; then
        true
    else
        false
    fi
}

battery_icon() {
    value=$1
    icon=""

    is_charging && icon="${ICON_CHARGING} "

    if [[ $value -gt 75 ]]; then
        icon="$icon""$ICON_FULL"
    elif [[ $value -gt 50 ]]; then
        icon="$icon""$ICON_THREE_QUARTERS"
    elif [[ $value -gt 25 ]]; then
        icon="$icon""$ICON_HALF"
    elif [[ $value -gt 5 ]]; then
        icon="$icon""$ICON_QUARTER"
    else
        icon="$icon""$ICON_EMPTY"
    fi

    echo $icon
}

value=$(battery_percent)
icon=$(battery_icon $value)

sketchybar -m --set $NAME label="$(battery_percent)%" icon="$icon"

