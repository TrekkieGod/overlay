EAPI=7

DESCRIPTION="A flexible emulator front-end supporting keyboardless navigation and custom system themes."
HOMEPAGE="https://emulationstation.org/"

inherit cmake-utils
inherit git-r3

EGIT_REPO_URI="https://github.com/Aloshi/EmulationStation.git"

LICENSE="BSD-with-attribution"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm ~arm64"
IUSE=""

RDEPEND="media-libs/libsdl2 dev-libs/boost media-libs/freeimage media-libs/freetype dev-cpp/eigen net-misc/curl"
DEPEND="${RDEPEND} dev-util/cmake"
