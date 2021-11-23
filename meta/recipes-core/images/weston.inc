# Copyright (C) 2021 AVNET Embedded, MSC Technologies GmbH

IMAGE_FEATURES += "splash hwcodecs weston"

ISP_PKGS = ""
ISP_PKGS_mx8mp = "packagegroup-imx-isp"

IMAGE_INSTALL += " \
	imx-vpu-hantro-vc \
	packagegroup-fsl-tools-gpu packagegroup-fsl-tools-gpu-external \
	packagegroup-fsl-gstreamer1.0 packagegroup-fsl-gstreamer1.0-full \
	packagegroup-fsl-tools-audio \
	${ISP_PKGS} \
	"
