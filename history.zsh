#!/bin/zsh
# History
setopt hist_expire_dups_first
setopt hist_ignore_space
setopt extended_history
setopt hist_no_store
setopt hist_reduce_blanks
setopt inc_append_history
setopt append_history
setopt hist_ignore_dups

HISTFILE=~/.history
HISTSIZE=2000
SAVEHIST=1000

if [ "`id -u`" = "0" ]; then
  HISTFILE=~root/.history
  umask 077
fi

