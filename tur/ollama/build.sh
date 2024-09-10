TERMUX_PKG_HOMEPAGE=https://ollama.com/
TERMUX_PKG_DESCRIPTION="Get up and running with large language models. "
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="@termux-user-repository"
TERMUX_PKG_VERSION="0.3.10"
TERMUX_PKG_SRCURL=git+https://github.com/ollama/ollama
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_UPDATE_TAG_TYPE="latest-release-tag"
TERMUX_PKG_BLACKLISTED_ARCHES="arm, i686"

termux_step_pre_configure() {
	termux_setup_golang
	termux_setup_cmake
}

termux_step_make() {
	go generate './...'
	go build
}

termux_step_make_install() {
	install -Dm700 ollama $TERMUX_PREFIX/bin/
}