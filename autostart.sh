#!/usr/bin/env bash

~/.local/scripts/touchpad_enable.sh &
xbanish &
sxhkd -c $XDG_CONFIG_HOME/sxhkd/sxhkdrc &
greenclip daemon &
dwmbar &
sleep 1; xwallpaper --zoom $XDG_CACHE_HOME/bg.png &
