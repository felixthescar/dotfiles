#!/bin/bash
xrandr --delmonitor TripleDisplay
xrandr --output DisplayPort-1 --auto --primary
xrandr --output HDMI-A-0 --auto
xrandr --auto --output HDMI-A-0 --left-of DisplayPort-1
#xrandr --output DisplayPort-1 --auto
xrandr --auto --output DisplayPort-2 --right-of DisplayPort-1
