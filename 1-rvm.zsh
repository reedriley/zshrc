#!/bin/zsh
if [ -s "$HOME/.rvm/scripts/rvm" ] ; then
  . "$HOME/.rvm/scripts/rvm"  # Load RVM into a shell session *as a function*
fi

if [ -d "$HOME/.rvm/scripts/zsh/Completion" ] ; then
  fpath+=~/.rvm/scripts/zsh/Completion
fi
