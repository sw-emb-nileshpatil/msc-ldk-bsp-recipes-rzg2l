# Copyright (C) 2019 AVNET Integrated, MSC Technologies GmbH

PREFERRED_PROVIDER_virtual/bootloader_imx = "u-boot-imx"
PREFERRED_PROVIDER_virtual/kernel_imx = "linux-imx"
PREFERRED_VERSION_linux-libc-headers_imx ?= "4.14"

# Extra audio support
MACHINE_EXTRA_RRECOMMENDS_append_imx = " ${@bb.utils.contains('DISTRO_FEATURES', 'alsa', 'imx-alsa-plugins', '', d)}"

DEFAULTTUNE_mx8 = "aarch64"

# Enable the kernel loadable module as default
USE_GPU_VIV_MODULE = "1"

USE_GPU_VIV_MODULE          = "1"
IMX_GPU_VERSION            ?= "6.2.4.p4.0"
IMX_GPU_VERSION_SUFFIX_mx8  = "aarch64"

PREFERRED_VERSION_imx-gpu-viv               = "${IMX_GPU_VERSION}-${IMX_GPU_VERSION_SUFFIX}"
PREFERRED_VERSION_xf86-video-imx-vivante    = "${IMX_GPU_VERSION}"
PREFERRED_VERSION_kernel-module-imx-gpu-viv = "${IMX_GPU_VERSION}"
PREFERRED_VERSION_imx-gpu-g2d               = "${IMX_GPU_VERSION}"

PREFERRED_VERSION_gstreamer1.0-plugins-base = "1.14.4.imx"
PREFERRED_VERSION_gstreamer1.0-plugins-bad  = "1.14.4.imx"
PREFERRED_VERSION_gstreamer1.0-plugins-good = "1.14.4.imx"
PREFERRED_VERSION_gstreamer1.0              = "1.14.4.imx"

PREFERRED_VERSION_fftw                      = "3.3.7"