#!/bin/sh

#
# ~/.config/sh/profile.d/xdg.sh
# XDG Base Directory specification environment variables
#
# https://specifications.freedesktop.org/basedir-spec/latest/
#

export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
# `XDG_STATE_HOME` is for data that represent actions history or
# the state of an application (logs, history, recently used files, …),
# and generally data that is *not reproducible*, unlike `XDG_CACHE_HOME`
# that should be used for caching *reproduceible* data.
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

if [ -z "$XDG_RUNTIME_DIR" ]; then
    export XDG_RUNTIME_DIR=/run/user/$(id -u)
    if [ ! -d "$XDG_RUNTIME_DIR" ]; then
        # We don't have write permission in `/run/user` but we do in `/tmp`.
        export XDG_RUNTIME_DIR=/tmp/run/user/$(id -u)
        mkdir -p "$XDG_RUNTIME_DIR"
    fi
    # We (maybe) own `XDG_RUNTIME_DIR` and it's (maybe) already 0700, but if we don't
    # own it then this is good because we will get an error and if we own it and it's
    # not set to 0700, we will be setting it, so it's a win-win.
    chmod 0700 "$XDG_RUNTIME_DIR"
fi
