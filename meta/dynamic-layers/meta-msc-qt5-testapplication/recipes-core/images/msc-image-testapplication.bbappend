# Copyright (C) 2020 AVNET Integrated, MSC Technologies GmbH

require recipes-core/images/msc-image-qt5.inc

MSC_PACKAGES = " \
	linux-hwtests \
	linux-hwtests-ext \
	system-test-controller-v2 \
	"

IMAGE_INSTALL_append += " \
	qt5-test-application \
	${MSC_PACKAGES} \
	"

IMAGE_INSTALL_remove += " \
	qtwebkit \
	kernel-devicetree \
	"

IMAGE_FEATURES_remove += " \
	ssh-server-dropbear \
	"
