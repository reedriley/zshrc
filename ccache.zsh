#!/bin/zsh
# enable ccache
if [ -d /usr/lib/ccache/bin ]; then
	export PATH="/usr/lib/ccache/bin:${PATH}"
elif [ -d /usr/lib/ccache ]; then
	export PATH="/usr/lib/ccache:${PATH}"
fi

