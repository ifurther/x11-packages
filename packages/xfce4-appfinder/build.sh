TERMUX_PKG_HOMEPAGE=https://docs.xfce.org/xfce/xfce4-appfinder/start
TERMUX_PKG_DESCRIPTION="Application launcher and finder"
TERMUX_PKG_LICENSE="GPL-2.0"
_MAJOR_VERSION=4.16
TERMUX_PKG_VERSION=$_MAJOR_VERSION.1
TERMUX_PKG_SRCURL=https://archive.xfce.org/src/xfce/xfce4-appfinder/$_MAJOR_VERSION/xfce4-appfinder-$TERMUX_PKG_VERSION.tar.bz2
TERMUX_PKG_SHA256=bfe3e9bd92695014ee74a2fbb7f5fd1b4c29cf043c4a11598b8958324c81e7ec
TERMUX_PKG_DEPENDS="intltool, glib, gtk3, libxfce4ui, garcon"