# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

DESCRIPTION="pPentoo Calamares base modules"
HOMEPAGE="http://www.pentoo.ch/"
SRC_URI=""
LICENSE="CC-BY-SA-4.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=app-admin/calamares-1.1.4.1[networkmanager,upower,fat,jfs,reiserfs,xfs,ntfs]"
RDEPEND="${DEPEND}"

S="${FILESDIR}"
src_install() {
	insinto "/etc/calamares/"
	doins -r "${S}/${PN}-conf/"*
	insinto "/usr/lib/calamares/modules/"
	doins -r "${S}/${PN}/"*
}
