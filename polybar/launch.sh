#!/usr/bin/env bash

dir="$HOME/.config/polybar"
themes=(`ls --hide="launch.sh" $dir`)

# Terminate already running bar instances
	killall -q polybar

launch_bar() {

	# Launch the bar
	if [[ "$style" == "hack" || "$style" == "cuts" ]]; then
		polybar -q top -c "$dir/$style/config.ini" &
		polybar -q bottom -c "$dir/$style/config.ini" &
	elif [[ "$style" == "pwidgets" ]]; then
		bash "$dir"/pwidgets/launch.sh --main
	else
		polybar -q main -c "$dir/$style/config.ini" &	
	fi
}

style="forest"
MONITOR=HDMI-A-0 launch_bar
MONITOR=DisplayPort-1 launch_bar
MONITOR=DisplayPort-2 launch_bar
