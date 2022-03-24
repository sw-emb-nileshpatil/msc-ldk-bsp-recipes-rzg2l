# Copyright (C) 2021 AVNET Embedded, MSC Technologies GmbH
# Released under the MIT license (see COPYING.MIT for the terms)

require linux-imx-bsp.inc

DEFCONFIG = "msc_sm2s_imx8mm_defconfig"
SRCREV = "5116345386399a641121497ad0a48204a20d083c"

do_copy_defconfig () {
	install -d ${B}
	mkdir -p ${B}
	cp ${S}/arch/arm64/configs/${DEFCONFIG} ${B}/.config
	cp ${S}/arch/arm64/configs/${DEFCONFIG} ${B}/../defconfig
}
