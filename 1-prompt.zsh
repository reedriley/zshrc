#!/bin/zsh
# put gems folder in path
if [ -d "/var/lib/gems/1.8/bin" ] ; then
  PATH="/var/lib/gems/1.8/bin:$PATH"
fi

# put macports in path
if [ -d "/opt/local/bin" ]; then
    PATH="$PATH:/opt/local/bin"
fi

if [ -d "/opt/local/man" ]; then
    MANPATH="$MANPATH:/opt/local/man"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/Bin" ] ; then
    PATH="$HOME/Bin:$PATH"
fi

if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi
