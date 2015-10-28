# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit eutils

DESCRIPTION="Pentoo Calameres Lazy Un-Official Installer"
HOMEPAGE="http://www.pentoo.ch"
SRC_URI="lzinstaller-desktop-icon.png"
LICENSE="CC-BY-SA-4.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=app-misc/calamares-pentoo-base-modules-1.2
	app-misc/calamares-pentoo-branding"
RDEPEND="${DEPEND}
	!!app-admin/anaconda"

src_unpack() {
	mkdir "${WORKDIR}/${P}"
	cp "${DISTDIR}/${A}" "${WORKDIR}/${P}/"
}

src_install() {
	newbin "${FILESDIR}/lazy-Installer.sh" "installer"
	insinto "/etc/skel/Desktop/"
	newins "${FILESDIR}/Pentoo-Lazy-Mode-Installer.desktop" "Pentoo-Lazy-Mode-Installer.desktop"
	fperms +x /etc/skel/Desktop/Installer.desktop
	doicon "${S}/lzinstaller-desktop-icon.png"
}
