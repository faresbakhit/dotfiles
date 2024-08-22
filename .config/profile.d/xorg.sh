#!/bin/sh

#
# ~/.config/sh/profile.d/xorg.sh
# Xorg configurations login shell script
#
# https://wiki.archlinux.org/title/xorg
# https://wiki.archlinux.org/title/xinit
#

export XINITRC="${XDG_CONFIG_HOME:-$HOME/.config}"/X11/xinitrc
export XAUTHORITY="${XDG_RUNTIME_DIR:-$HOME}/Xauthority"
