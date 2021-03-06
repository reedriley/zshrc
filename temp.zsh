#!/bin/zsh
# Create a local temp directory
TMPDIR=~/Temp
TMPLOC=/tmp/.${USER}.tmp/
mkdir -p ${TMPLOC}
if [[ -x `which tmpreaper` ]]; then
	`which tmpreaper` -s 1d ${TMPLOC}
else
  echo "WARNING: tmpreaper not installed."
fi
ln -fns ${TMPLOC} ${TMPDIR}

