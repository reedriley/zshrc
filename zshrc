# Source modular config
local SCRIPT_DIR=~/.zsh
local SCRIPTS="${SCRIPT_DIR}/*"

for SCRIPT in ${~SCRIPTS}; do
  if [ "${SCRIPT}" = "${SCRIPT_DIR}/zshrc" ]; then
    continue
  fi

  . ${SCRIPT}
done
