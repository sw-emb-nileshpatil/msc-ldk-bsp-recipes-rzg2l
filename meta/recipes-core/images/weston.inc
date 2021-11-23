# Copyright (C) 2021 AVNET Embedded, MSC Technologies GmbH

IMAGE_FEATURES += "splash hwcodecs weston"

IMAGE_INSTALL += " \
	packagegroup-fsl-tools-gpu packagegroup-fsl-tools-gpu-external \
	packagegroup-fsl-gstreamer1.0 packagegroup-fsl-gstreamer1.0-full \
	packagegroup-fsl-tools-audio \
	"
