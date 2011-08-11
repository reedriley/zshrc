#!/bin/zsh
# enable ccache
if [ -d /usr/lib/ccache/bin ]; then
	export PATH="/usr/lib/ccache/bin:${PATH}"
elif [ -d /usr/lib/ccache ]; then
	export PATH="/usr/lib/ccache:${PATH}"
elif [ -d /usr/local/Cellar/ccache/3.1.5/libexec ]; then
  export PATH="/usr/local/Cellar/ccache/3.1.5/libexec:${PATH}"
fi

