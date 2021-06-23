#!/usr/bin/env bash

# Custom keyboard map
#  xkbcomp $DISPLAY output.xkb  # To get current configuration
#  now follow: https://wiki.archlinux.org/index.php/X_keyboard_extension#Caps_hjkl_as_vimlike_arrow_keys
if [ -f $HOME/.config/pbl.xkb ]; then
  xkbcomp $HOME/.config/pbl.xkb $DISPLAY
else
  setxkbmap us,es altgr-intl, -option grp:rctrl_rshift_toggle
fi
~/.local/scripts/touchpad_enable.sh &
dunst &
xbanish &
sxhkd -c ~/.config/sxhkd/sxhkdrc &
dwmbar &
greenclip daemon &
nm-applet &
blueman-applet &
~/.fehbg &
#sleep 1; xwallpaper --zoom $XDG_CACHE_HOME/bg.png &
