# Copyright (C) 2019 AVNET Integrated, MSC Technologies GmbH
# Released under the MIT license (see COPYING.MIT for the terms)

require ../../../../../meta-msc-ldk-core-recipes.git/msc-git.inc
require msc-git-src.inc

SRCREV = "0aaed47d06ceab853da0a6eb9438efc523ec1309"

do_copy_defconfig () {
	mkdir -p ${B}
	cp ${S}/arch/arm64/configs/msc_sm2s_imx8m_defconfig ${B}/.config
	cp ${S}/arch/arm64/configs/msc_sm2s_imx8m_defconfig ${B}/../defconfig
}
