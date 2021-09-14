#!/usr/bin/env bash

setxkbmap us,es altgr-intl, -option grp:rctrl_rshift_toggle &
~/.local/scripts/touchpad_enable.sh &
xbanish &
sxhkd -c ~/.config/sxhkd/sxhkdrc &
dunst &
greenclip daemon &
sleep 1; xwallpaper --zoom $XDG_CACHE_HOME/bg.png &
dwmbar &
