#!/bin/zsh

if [ -x "`which encfs`" ]; then
  local PRIVATE_SRC=~/.Private
  local PRIVATE_DIR=~/Private

  private-mount() {
    if ! [ -f ${PRIVATE_DIR}/.private ]; then
      BEFORE_PRIVATE=${PWD}

      encfs --idle=1 ${PRIVATE_SRC} ${PRIVATE_DIR} || return 1
      
      if ! [ -f ${PRIVATE_DIR}/.private ]; then
        touch ${PRIVATE_DIR}/.private
      fi

      cd ${PRIVATE_DIR}
    fi

    cd ${PRIVATE_DIR}
  }

  private-unmount() {
    if [ -z "${BEFORE_PRIVATE}" ]; then
      BEFORE_PRIVATE=`pwd`
    fi

    cd ~

    if [ -f ${PRIVATE_DIR}/.private ]; then
      fusermount -u ${PRIVATE_DIR}
    fi

    cd ${BEFORE_PRIVATE}
    unset BEFORE_PRIVATE

    clear-recent
  }
fi

clear-recent() {
  rm -f ~/.recently-used.xbel
  rm -f ~/.recently-used
  echo -n > ~/.history
}
