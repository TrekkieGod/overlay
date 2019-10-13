EAPI=7

DESCRIPTION="A Fork of Emulation Station for RetroPie. Emulation Station is a flexible emulator front-end supporting keyboardless navigation and custom system themes."
HOMEPAGE="https://emulationstation.org/"

inherit cmake-utils
inherit git-r3

EGIT_REPO_URI="https://github.com/RetroPie/EmulationStation.git"
EGIT_COMMIT="v2.7.6"

LICENSE="BSD-with-attribution"
SLOT="0"
KEYWORDS="amd64 x86 arm arm64"
IUSE=""

RDEPEND="media-libs/libsdl2 dev-libs/boost dev-libs/rapidjson media-libs/freeimage media-libs/freetype dev-cpp/eigen net-misc/curl"
DEPEND="${RDEPEND} dev-util/cmake"
