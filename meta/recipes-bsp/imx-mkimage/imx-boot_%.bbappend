# Copyright (C) 2021 AVNET Embedded, MSC Technologies GmbH

require imx-mkimage_git.inc

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI_append_mx8 = " \
	file://emmc_boot0_install.sh \
	file://emmc_boot1_install.sh \
	file://emmc_user_install.sh \
	"

do_install_append() {
	install -m 0755 ${WORKDIR}/emmc_boot0_install.sh ${D}/boot/
	install -m 0755 ${WORKDIR}/emmc_boot1_install.sh ${D}/boot/
	install -m 0755 ${WORKDIR}/emmc_user_install.sh ${D}/boot/
}
