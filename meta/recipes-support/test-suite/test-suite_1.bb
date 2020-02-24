# Copyright (C) 2019 AVNET Integrated, MSC Technologies GmbH

AUTHOR = "Waldemar Glensk <waldemar.glensk@msc-technologies.eu>"
LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

inherit update-rc.d

SRC_URI_append = " \
	file://test-suite \
	file://testsuite.sh \	
	"
	
INITSCRIPT_NAME = "testsuite.sh"
INITSCRIPT_PARAMS = "start 99 2 3 4 5 . stop 19 0 1 6 ."

do_install_append() {
	install -d ${D}/home/root/
	cp -R --no-dereference --preserve=mode,links ${WORKDIR}/test-suite ${D}/home/root/
	install -d ${D}/${sysconfdir}/init.d
	install -m 0755 ${WORKDIR}/testsuite.sh ${D}${sysconfdir}/init.d/
}

FILES_${PN} += "/home"

RDEPENDS_${PN} += " bash "
