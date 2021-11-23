# Copyright (C) 2021 AVNET Embedded, MSC Technologies GmbH

require ../../../../../../../meta-msc-arm-extensions.git/recipes-core/images/msc-image-qt5.bb
include ../../../../recipes-core/images/msc-image-qt5.inc

MSC_PACKAGES = " \
	linux-hwtests \
	linux-hwtests-ext \
	mscio-monitor \
	msc-ldk-hw-verification \
"

IMAGE_INSTALL_append += " \
	qt5-test-application \
	${MSC_PACKAGES} \
"

IMAGE_INSTALL_remove += " \
	kernel-devicetree \
"
