# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

OFED_VER="1.4"
OFED_SUFFIX="1"

inherit openib

DESCRIPTION="OpenIB userspace RDMA CM library"

IUSE=""
KEYWORDS="~x86 ~amd64"

DEPEND=""
RDEPEND="${DEPEND}
	!sys-cluster/openib-userspace"

src_install() {
	make DESTDIR="${D}" install || die "install failed"
	dodoc README AUTHORS ChangeLog
}
