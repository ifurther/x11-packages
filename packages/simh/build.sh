TERMUX_PKG_HOMEPAGE=http://simh.trailing-edge.com/
TERMUX_PKG_DESCRIPTION="A simulator for historic computer systems, as well as papers and reflections on the history of computing."
TERMUX_PKG_LICENSE="BSD"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_GIT_BRANCH=master
TERMUX_PKG_VERSION=3.11-1
TERMUX_PKG_SRCURL=https://github.com/simh/simh/archive/refs/tags/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=c8a2fc62bfa9369f75935950512a4cac204fd813ce6a9a222b2c6a76503befdb
TERMUX_PKG_DEPENDS="libc++, libpcap, sdl2, sdl2-ttf, libpng, libslirp, pcre, vde2, zlib"
TERMUX_PKG_BUILD_IN_SRC=true

termux_step_pre_configure() {
	LDFLAGS+=" -landroid-glob -lm"
}

termux_step_make() {
#	sed 's/math/c++\/v1\/math/g' -i */*.c
	sed "s/\`\$(SDLX_CONFIG)/\`bash\ \$(SDLX_CONFIG)/g" -i makefile
	make GCC=$CC LDFLAGS="$LDFLAGS" LIBRARIES="${TERMUX_PREFIX}/lib" INCLUDES="${TERMUX_PREFIX}/include:${TERMUX_PREFIX}/include/c++/v1:${TERMUX_PREFIX}/include/SDL2"
}
