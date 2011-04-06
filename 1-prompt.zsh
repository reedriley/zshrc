#!/bin/zsh
# put gems folder in path
if [ -d "/var/lib/gems/1.8/bin" ] ; then
  PATH="/var/lib/gems/1.8/bin:$PATH"
fi

# put macports in path
if [ -d "/usr/local/bin" ]; then
    PATH="/usr/local/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/Bin" ] ; then
    PATH="$HOME/Bin:$PATH"
fi

if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi
