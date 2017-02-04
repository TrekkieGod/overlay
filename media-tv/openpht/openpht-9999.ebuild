# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit git-r3 cmake-utils eutils

DESCRIPTION="OpenPHT is a community driven fork of Plex Home Theater"
HOMEPAGE="https://github.com/RasPlex/OpenPHT"
EGIT_REPO_URI="https://github.com/RasPlex/OpenPHT.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-libs/yajl
	app-pda/libplist
	net-libs/libmicrohttpd
	net-libs/shairplay
	dev-libs/libcec
	dev-libs/tinyxml
	media-libs/sdl-image
	media-video/rtmpdump
	media-libs/libmodplug"
RDEPEND="${DEPEND}"

src_prepare() {
	epatch "${FILESDIR}/FindFriBiDi.cmake.patch"
	eapply_user
}

src_configure() {
	local mycmakeargs=(
		-DCMAKE_BUILD_TYPE=Debug
		-DCOMPRESS_TEXTURES=on
		-DENABLE_AUTOUPDATE=off
		-DCMAKE_INSTALL_PREFIX=/opt/openpht
	)
	cmake-utils_src_configure
}

#src_install(){
#}
