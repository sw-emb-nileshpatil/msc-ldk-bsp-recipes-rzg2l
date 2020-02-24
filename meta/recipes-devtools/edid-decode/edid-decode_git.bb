# Copyright (C) 2020 AVNET Integrated, MSC Technologies GmbH

SUMMARY = "EDID decode" 
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

SRC_URI = "git://linuxtv.org/edid-decode.git;protocol=https"
SRCREV = "6def7bc83dfb0338632e06a8b14c93faa6af8879"
PR = "r0"

S = "${WORKDIR}/git"

do_compile() {
	oe_runmake
}

do_install() {
	install -d ${D}${bindir}
	install -m 0755 ${PN} ${D}${bindir}
}
