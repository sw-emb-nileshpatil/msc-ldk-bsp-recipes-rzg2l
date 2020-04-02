# Copyright (C) 2020 AVNET Integrated, MSC Technologies GmbH
#@TYPE: Machine
#@NAME: MSC sm2s-imx8mm
#@SOC: i.MX8M
#@DESCRIPTION: Machine configuration for sm2s-imx8mm

include conf/machine/include/imx-preferred-env.inc


KERNEL_DEVICETREE = " \
	msc/imx8mm/msc-sm2s-imx8mm-03N0840E-dsi-avd-tt78qt.dtb \
	msc/imx8mm/msc-sm2s-imx8mm-03N0840E-headless.dtb \
	\
	msc/imx8mm/msc-sm2s-imx8mm-03N0880I-dsi-rm67192.dtb \
	msc/imx8mm/msc-sm2s-imx8mm-03N0880I-headless.dtb \
	\
	msc/imx8mm/msc-sm2s-imx8mm-03N4200I-headless.dtb \
	msc/imx8mm/msc-sm2s-imx8mm-03N4200I-lvds-am800480n7.dtb \
	msc/imx8mm/msc-sm2s-imx8mm-03N4200I-lvds-ama121a01.dtb \
	msc/imx8mm/msc-sm2s-imx8mm-03N4200I-lvds-p251hvn01.dtb \
	\
	msc/imx8mm/msc-sm2s-imx8mm-03N4210I-headless.dtb \
	msc/imx8mm/msc-sm2s-imx8mm-03N4210I-lvds-am800480n7.dtb \
	msc/imx8mm/msc-sm2s-imx8mm-03N4210I-lvds-ama121a01.dtb \
	msc/imx8mm/msc-sm2s-imx8mm-03N4210I-lvds-p251hvn01.dtb \
	\
	msc/imx8mm/msc-sm2s-imx8mm-13N4200I-dsi-tm055jvhg14.dtb \
	msc/imx8mm/msc-sm2s-imx8mm-13N4200I-headless.dtb \
	msc/imx8mm/msc-sm2s-imx8mm-13N4200I-lvds-am800480n7.dtb \
	msc/imx8mm/msc-sm2s-imx8mm-13N4200I-lvds-ama121a01.dtb \
	msc/imx8mm/msc-sm2s-imx8mm-13N4200I-lvds-p251hvn01.dtb \
	\
	msc/imx8mm/msc-sm2s-imx8mm-14N0261I-headless.dtb \
	msc/imx8mm/msc-sm2s-imx8mm-14N0261I-lvds-ama070a04.dtb \
	msc/imx8mm/msc-sm2s-imx8mm-14N0261I-lvds-ama121a01.dtb \
	msc/imx8mm/msc-sm2s-imx8mm-14N0261I-lvds-p251hvn01.dtb \
	"

UBOOT_CONFIG ??= "sd"
UBOOT_CONFIG[sd] = "msc_sm2s_imx8mm_config,sdcard"
UBOOT_DTB_NAME = "msc-sm2s-imx8mm-qc-base.dtb"
SPL_BINARY = "spl/u-boot-spl.bin"

# Set DDR FIRMWARE
DDR_FIRMWARE_NAME = " \
	lpddr4_pmu_train_1d_imem.bin \
	lpddr4_pmu_train_1d_dmem.bin \
	lpddr4_pmu_train_2d_imem.bin \
	lpddr4_pmu_train_2d_dmem.bin \
	"

# Set Serial console
SERIAL_CONSOLE = "115200 ttymxc0"

IMAGE_BOOTLOADER = "imx-boot"
IMAGE_FSTYPES = " wic "

BOOT_SPACE = "65536"

LOADADDR = ""
UBOOT_SUFFIX = "bin"
UBOOT_MAKE_TARGET = ""
IMX_BOOT_SEEK = "33"
IMXBOOT_TARGETS = "flash_board"

IMAGE_BOOTFILES_DEPENDS += "imx-m4-demos:do_deploy"
IMAGE_BOOTFILES += " \
	imx8mm_m4_TCM_hello_world.bin \
	"

IMAGE_INSTALL_append += " \
	weston \
	weston-init \
	weston-examples \
	devmem2 \
	memtester \
	i210-armtool \
	i210-config \
	test-suite \
	imx-boot \
	fb-test \
	iproute2 \
	canutils \
	"

IMAGE_INSTALL_remove += " peak-linux-driver "
ROOTFS_POSTPROCESS_COMMAND_remove += " remove_boot; "

# temporary
IMAGE_INSTALL_remove += " \
	qt-gstreamer \
	"
