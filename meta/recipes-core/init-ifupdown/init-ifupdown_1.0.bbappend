# Copyright (C) 2020 AVNET Integrated, MSC Technologies GmbH

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += " \
	file://interfaces \
	"

do_install_apend () {
	install -m 0644 ${WORKDIR}/interfaces ${D}${sysconfdir}/network/interfaces
}
