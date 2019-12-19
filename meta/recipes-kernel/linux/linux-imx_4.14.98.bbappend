# Copyright (C) 2019 AVNET Integrated, MSC Technologies GmbH
# Released under the MIT license (see COPYING.MIT for the terms)

require ../../../../../meta-msc-ldk-core-recipes.git/msc-git.inc
require msc-git-src.inc

SRCREV = "a1d443f43878cf3f5f76dff480057289a09215c4"

do_copy_defconfig () {
	mkdir -p ${B}
	cp ${S}/arch/arm64/configs/msc_sm2s_imx8m_defconfig ${B}/.config
	cp ${S}/arch/arm64/configs/msc_sm2s_imx8m_defconfig ${B}/../defconfig
}
