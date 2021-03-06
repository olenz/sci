# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
# Ebuild generated by g-pypi 0.1

EAPI="3"
SUPPORT_PYTHON_ABIS="1"
DISTUTILS_SRC_TEST="setup.py"
PYTHON_DEPEND="2:2.5:2.7"

inherit python distutils

DESCRIPTION="Powerful data structures for data analysis and statistics"
HOMEPAGE="http://pandas.sourceforge.net"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="BSD"
KEYWORDS="~amd64"
SLOT="0"
IUSE="doc examples"

DEPEND="dev-python/setuptools
	>=dev-python/numpy-1.4.0
	>=dev-python/python-dateutil-1.5
	sci-libs/scipy
	sci-libs/scikits_statsmodels
	dev-python/pytables
	dev-python/pytz
	dev-python/matplotlib"
RDEPEND="${DEPEND}"

RESTRICT_PYTHON_ABIS="2.4 3.*"

src_install() {
	distutils_src_install
	if use doc; then
		dodoc -r doc
	fi
	if use examples; then
		insinto /usr/share/doc/"${PF}"/
		doins -r examples
	fi
}
