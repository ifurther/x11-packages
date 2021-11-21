TERMUX_PKG_HOMEPAGE=http://www.lxde.org/
TERMUX_PKG_DESCRIPTION="LXDE GTK+ theme switcher"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="Yisus7u7"
TERMUX_PKG_VERSION=0.6.3
TERMUX_PKG_REVISION=4
TERMUX_PKG_SRCURL=https://downloads.sourceforge.net/lxde/lxappearance-${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_SHA256=7222d858b8fef4b7967c42142d61e82ded6dd42dc5ef1d59caad775795928b38
TERMUX_PKG_DEPENDS="dbus-glib, glib, gtk3, libx11, xsltproc"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--enable-gtk3 --enable-dbus"
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_MAKE_PROCESSES=1
