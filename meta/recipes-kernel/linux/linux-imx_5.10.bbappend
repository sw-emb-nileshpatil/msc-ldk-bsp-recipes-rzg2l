# Copyright (C) 2021 AVNET Embedded, MSC Technologies GmbH
# Released under the MIT license (see COPYING.MIT for the terms)

require linux-imx-bsp.inc

DEFCONFIG = "msc_sm2s_imx8mm_defconfig"
SRCREV = "1f2fcb16f3be5095f81818b9047884d8f1c949c1"

do_copy_defconfig () {
	install -d ${B}
	mkdir -p ${B}
	cp ${S}/arch/arm64/configs/${DEFCONFIG} ${B}/.config
	cp ${S}/arch/arm64/configs/${DEFCONFIG} ${B}/../defconfig
}
