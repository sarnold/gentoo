# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

OASIS_BUILD_DOCS=1
OASIS_BUILD_TESTS=1

inherit oasis

DESCRIPTION="A pure OCaml library to read and write CSV files"
HOMEPAGE="https://github.com/Chris00/ocaml-csv"
SRC_URI="https://github.com/Chris00/ocaml-csv/releases/download/${PV}/${P}.tar.gz"

LICENSE="LGPL-2.1-with-linking-exception"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="+lwt"

DEPEND="lwt? ( dev-ml/lwt:= )"
RDEPEND="${DEPEND}"

DOCS=( "README.txt" "AUTHORS.txt" )

src_configure() {
	oasis_configure_opts="$(use_enable lwt)" \
		oasis_src_configure
}
