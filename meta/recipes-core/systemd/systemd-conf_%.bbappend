SUMMARY = "Systemd system configuration"
LICENSE = "MIT"

FILESEXTRAPATHS_append := "${THISDIR}/files:"
LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"

SRC_URI_append = "\
	file://shutdown.conf \
	"

do_install_append() {
	install -D -m0644 ${WORKDIR}/shutdown.conf ${D}${systemd_unitdir}/system.conf.d/01-${PN}.conf
}
