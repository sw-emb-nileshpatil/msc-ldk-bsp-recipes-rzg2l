# Copyright (C) 2019 AVNET Integrated, MSC Technologies GmbH

AUTHOR = "Waldemar Glensk <waldemar.glensk@msc-technologies.eu>"
LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI_append = " \
	file://test-suite \
	"

do_install_append() {
	install -d ${D}/home/root/
	cp -R --no-dereference --preserve=mode,links ${WORKDIR}/test-suite ${D}/home/root/
}

FILES_${PN} += "/home"

RDEPENDS_${PN} += " bash "