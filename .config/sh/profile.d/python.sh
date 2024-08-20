#!/bin/sh

#
# ~/.config/sh/profile.d/python
# Python configurations login shell script
#
# https://docs.python.org/3/using/cmdline.html
#

export PYTHONPYCACHEPREFIX="${XDG_CACHE_HOME:-$HOME/.cache}"/python/
export PYTHONSTARTUP="${XDG_CONFIG_HOME:-$HOME/.config}"/python/pythonstartup

export PIP_REQUIRE_VIRTUALENV=1
