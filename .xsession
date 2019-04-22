#!/bin/bash

# xrandr --output HDMI3 --primary --auto
# feh --no-fehbg --bg-fill "$HOME/wallpaper.png"

# Set up environment.
export XDG_MENU_PREFIX="lxde-"
export DESKTOP_SESSION="LXDE"
eval $(gnome-keyring-daemon --start --components=ssh,pkcs11,secrets)
xrdb -merge "$HOME/.Xresources"

# Start some programs.
nm-applet &
unclutter -root -idle 25 &
# xfce4-panel --disable-wm-check &
urxvtd -q -f

exec /usr/bin/i3
