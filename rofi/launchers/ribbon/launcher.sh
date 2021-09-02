#!/usr/bin/env bash

## Author  : Aditya Shakya
## Mail    : adi1090x@gmail.com
## Github  : @adi1090x
## Twitter : @adi1090x

# Available Styles
# >> Created and tested on : rofi 1.6.0-1
#
# ribbon_top		ribbon_top_round		ribbon_bottom	 	ribbon_bottom_round
# ribbon_left		ribbon_left_round		ribbon_right		ribbon_right_round
# full_bottom		full_top				full_left			full_right

theme="ribbon_right"

dir="$HOME/.config/rofi"
themes_dir="$dir/launchers/ribbon"
color="nordic.rasi"

#styles=($(ls -p --hide="colors.rasi" $dir/styles))
#echo $styles
#color="${styles[$(( $RANDOM % 8 ))]}"
#echo $color

# comment this line to disable random colors
sed -i -e "s/@import .*/@import \"$color\"/g" $dir/styles/colors.rasi

# comment these lines to disable random style
#themes=($(ls -p --hide="launcher.sh" --hide="styles" $themes_dir))
#theme="${themes[$(( $RANDOM % 12 ))]}"

rofi -no-lazy-grab -show drun -modi drun -theme $themes_dir/"$theme"
