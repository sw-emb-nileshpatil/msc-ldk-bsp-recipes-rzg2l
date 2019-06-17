# Copyright (C) 2019 AVNET Integrated, MSC Technologies GmbH
# Released under the MIT license (see COPYING.MIT for the terms)

require ../../../../../meta-msc-ldk-core-recipes.git/msc-git.inc
require msc-git-src.inc

SRCREV = "b6d681d74c161741225125d3b11a60b6510b5392"

do_copy_defconfig () {
	mkdir -p ${B}
	cp ${S}/arch/arm64/configs/msc_sm2s_imx8m_defconfig ${B}/.config
	cp ${S}/arch/arm64/configs/msc_sm2s_imx8m_defconfig ${B}/../defconfig
}
