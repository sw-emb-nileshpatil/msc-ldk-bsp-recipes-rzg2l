# Copyright (C) 2019 AVNET Integrated, MSC Technologies GmbH
AUTHOR = "Waldemar Glensk <waldemar.glensk@msc-technologies.eu>"
LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"

inherit update-rc.d

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI_append = " \
	file://start.sh \
	file://stop.sh \
	file://start-video0.sh \
	file://config.ini \
	file://system-test-controller \
	file://scripts \
	file://testappl_startup.sh \
	file://testLAN.sh \
"

INITSCRIPT_NAME = "testappl_startup.sh"
INITSCRIPT_PARAMS = "start 99 2 3 4 5 . stop 19 0 1 6 ."

do_install_append() {
	install -d ${D}/opt/${PN}
	install -m 0755 ${WORKDIR}/*.sh ${D}/opt/${PN}
	install -m 0644 ${WORKDIR}/*.ini ${D}/opt/${PN}
	cp -R --no-dereference --preserve=mode,links ${WORKDIR}/system-test-controller ${D}/opt/${PN}
	cp -R --no-dereference --preserve=mode,links ${WORKDIR}/scripts ${D}/opt/${PN}
	install -d ${D}/${sysconfdir}/init.d
	install -m 0755 ${WORKDIR}/testappl_startup.sh ${D}${sysconfdir}/init.d/
}

FILES_${PN} += "/opt ${sysconfdir}"

RDEPENDS_${PN} += " bash "
