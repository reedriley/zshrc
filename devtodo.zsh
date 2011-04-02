#!/bin/zsh
if [[ -x `which todo` ]]; then 
  local TODO=`which todo`
  local TODO_OPTIONS="--timeout --summary"

  cd()
  {
    if builtin cd "$@"; then
      ${TODO} ${=TODO_OPTIONS}
    fi
  }

  pushd()
  {
    if builtin pushd "$@"; then
      ${TODO} ${=TODO_OPTIONS}
    fi
  }

  popd()
  {
    if builtin popd "$@"; then
      ${TODO} ${=TODO_OPTIONS}
    fi
  }

  # Run devtodo if not root, to annoy me to do something.
  if [ "`id -u`" != "0" ]; then
    ${TODO} ${=TODO_OPTIONS}
  fi
else
  echo "WARNING: devtodo not installed."
fi

