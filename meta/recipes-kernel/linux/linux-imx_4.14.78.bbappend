# Copyright (C) 2019 AVNET Integrated, MSC Technologies GmbH
# Released under the MIT license (see COPYING.MIT for the terms)

SRCBRANCH = "msc-imx_4.14.78_1.0.0_ga-develop"
KERNEL_SRC = "git://git@destsm3ux05bbct.emea.avnet.com:7999/thirdparty/linux-imx.git;protocol=ssh"
SRCREV = "0d9d1b6e7b1491035b90f0441a070f7b82cc85ae"

do_copy_defconfig () {
	mkdir -p ${B}
	cp ${S}/arch/arm64/configs/msc_sm2s_imx8mq_defconfig ${B}/.config
	cp ${S}/arch/arm64/configs/msc_sm2s_imx8mq_defconfig ${B}/../defconfig
}
