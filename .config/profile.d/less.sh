#!/bin/sh

#
# ~/.config/sh/profile.d/less.sh
# less/lesspipe configurations login shell script
#

# less
export PAGER=less
export LESS="-R"
export LESSOPEN="|lesspipe.sh %s"

# lesspipe
export LESSQUIET=1
export LESSCOLORIZER="bat"
