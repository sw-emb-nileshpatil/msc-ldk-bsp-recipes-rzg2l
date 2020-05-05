# Copyright (C) 2020 AVNET Integrated, MSC Technologies GmbH

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += " \
	file://i210_imx8mm.txt \
	"

do_install_append() {
	install -m 664 ${S}/i210_imx8mm.txt ${D}/i210
}
