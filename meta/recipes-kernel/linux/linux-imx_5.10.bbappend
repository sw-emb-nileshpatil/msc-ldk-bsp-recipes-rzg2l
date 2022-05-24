# Copyright (C) 2021 AVNET Embedded, MSC Technologies GmbH
# Released under the MIT license (see COPYING.MIT for the terms)

require linux-imx-bsp.inc

DEFCONFIG = "msc_sm2s_imx8mm_defconfig"
SRCREV = "33186e69d018359f1c1d50c70f3e1af76138fe9f"

do_copy_defconfig () {
	install -d ${B}
	mkdir -p ${B}
	cp ${S}/arch/arm64/configs/${DEFCONFIG} ${B}/.config
	cp ${S}/arch/arm64/configs/${DEFCONFIG} ${B}/../defconfig
}
