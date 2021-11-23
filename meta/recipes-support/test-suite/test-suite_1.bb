# Copyright (C) 2021 AVNET Embedded, MSC Technologies GmbH

AUTHOR = "Waldemar Glensk <waldemar.glensk@avnet.com>"
LICENSE = "GPL-2.0"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0-only;md5=801f80980d171dd6425610833a22dbe6"

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
