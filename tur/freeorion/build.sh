TERMUX_PKG_HOMEPAGE=https://www.freeorion.org
TERMUX_PKG_DESCRIPTION="FreeOrion is a free, open source, turn-based space empire and galactic conquest (4X) computer game being designed and built by the FreeOrion project. FreeOrion is inspired by the tradition of the Master of Orion games, but is not a clone or remake of that series or any other game."
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="@termux-user-repository"
TERMUX_PKG_VERSION="0.5.0.1"
TERMUX_PKG_SRCURL=https://github.com/freeorion/freeorion/archive/refs/tags/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=a9349692e355a39a3cc456ed0fa9cb1ed7a5f3d120a0e3253f730fa6caa3a509
TERMUX_PKG_DEPENDS="glew, freeorion-data"
TERMUX_PKG_GROUPS="games"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="-DCMAKE_SYSTEM_NAME=Linux -DBUILD_CLIENT_GODOT=OFF"