#!/bin/zsh
# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' insert-unambiguous true
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*' 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' original true
zstyle ':completion:*' squeeze-slashes true
zstyle ':completion:*' use-compctl true
zstyle :compinstall filename '/home/jriley/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Hack for stg tab-completion
autoload bashcompinit
bashcompinit

bash_source() {
  alias shopt=':'
  alias _expand=_bash_expand
  alias _complete=_bash_comp
  emulate -L sh
  setopt kshglob noshglob braceexpand
  BASH_VERSINFO=3

  source "$@"
}

if [ -x "`which stg`" ]; then
  if [ -f /etc/bash_completion.d/stg ]; then
    bash_source /etc/bash_completion.d/stg
  fi
fi
