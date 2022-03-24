# Copyright (C) 2021 AVNET Embedded, MSC Technologies GmbH
# @TYPE: Machine
# @NAME: MSC sm2s-imx8mm
# @SOC: i.MX8M
# @DESCRIPTION: Machine configuration for sm2s-imx8mm
# derived from meta-fsl-bsp-releases/meta-bsp/conf/machine/imx8mmevk.conf

MACHINEOVERRIDES =. "imx-boot-container:mx8:mx8m:mx8mm:"

require conf/machine/include/imx-base.inc
require conf/machine/include/imx-preferred-env.inc
require conf/machine/include/tune-cortexa53.inc

IMAGE_FSTYPES += "wic wic.bmap"

MACHINE_FEATURES_append_use-nxp-bsp = " pci wifi bluetooth"
MACHINE_FEATURES_remove_use-nxp-bsp = "nxp8987"

MODULE_DEVICETREE = " \
		msc/imx8mm/msc-sm2s-imx8mm-03N0280I-module.dtb \
		msc/imx8mm/msc-sm2s-imx8mm-03N0840E-module.dtb \
		msc/imx8mm/msc-sm2s-imx8mm-03N0880I-module.dtb \
		msc/imx8mm/msc-sm2s-imx8mm-03N4200I-module.dtb \
		msc/imx8mm/msc-sm2s-imx8mm-03N4210I-module.dtb \
		msc/imx8mm/msc-sm2s-imx8mm-13N0810E-module.dtb \
		msc/imx8mm/msc-sm2s-imx8mm-13N4200I-module.dtb \
		msc/imx8mm/msc-sm2s-imx8mm-13N4800I-module.dtb \
		msc/imx8mm/msc-sm2s-imx8mm-14N0261I-module.dtb \
		msc/imx8mm/msc-sm2s-imx8mm-16N0810E-module.dtb \
		msc/imx8mm/msc-sm2s-imx8mm-24N4200E-module.dtb \
		msc/imx8mm/msc-sf385560-imx8mm-03N0810I-module.dtb \
		msc/imx8mm/asc-sm2s-imx8mm-03N0800E-module.dtb \
		"

OVERLAY_DEVICETREE = " \
		msc/imx8mm/overlay-baseboard-vebo.dtb \
		msc/imx8mm/overlay-baseboard-ep1.dtb \
		msc/imx8mm/overlay-baseboard-ep5.dtb \
		msc/imx8mm/overlay-lvds-ama-070a04.dtb \
		msc/imx8mm/overlay-lvds-ama-101a01.dtb \
		msc/imx8mm/overlay-lvds-ama-121a01.dtb \
		msc/imx8mm/overlay-lvds-auo-p215hvn01.dtb \
		msc/imx8mm/overlay-dsi-rm67191.dtb \
		msc/imx8mm/overlay-dsi-boe-gv101wum-ls0.dtb \
		msc/imx8mm/overlay-spi-flash.dtb \
		msc/imx8mm/overlay-cam-ov5640.dtb \
		"

KERNEL_DEVICETREE_append_use-nxp-bsp = " \
		${MODULE_DEVICETREE} \
		${OVERLAY_DEVICETREE} \
		"

IMX_DEFAULT_BOOTLOADER_use-nxp-bsp = "u-boot-imx"
IMX_DEFAULT_BOOTLOADER_use-mainline-bsp = "u-boot-fslc"

IMX_BOOT_SOC_TARGET = "iMX8MM"
IMX_BOOT_UART_BASE = "0x30860000"

UBOOT_CONFIG ??= "sd"
UBOOT_CONFIG[sd] = "msc_sm2s_imx8mm_config,sdcard"
SPL_BINARY = "spl/u-boot-spl.bin"

ATF_PLATFORM = "imx8mm"
ATF_LOAD_ADDR = "0x920000"

# Extra firmware package name, that is required to build boot container for fslc bsp
IMX_EXTRA_FIRMWARE = "firmware-imx-8m"

# Set u-boot DTB
UBOOT_DTB_NAME = " \
		msc-sm2s-imx8mm.dtb \
		"

# Set DDR FIRMWARE
DDR_FIRMWARE_NAME = " \
		lpddr4_pmu_train_1d_imem.bin \
		lpddr4_pmu_train_1d_dmem.bin \
		lpddr4_pmu_train_2d_imem.bin \
		lpddr4_pmu_train_2d_dmem.bin \
		"

# Set imx-mkimage boot target
IMXBOOT_TARGETS = " \
		flash_board \
		"

# Set Serial console
SERIAL_CONSOLES = "115200;ttymxc0 115200;ttymxc2"

IMAGE_BOOTLOADER = "imx-boot"

LOADADDR = ""
UBOOT_SUFFIX = "bin"
UBOOT_MAKE_TARGET = ""
IMX_BOOT_SEEK = "33"

OPTEE_BIN_EXT = "8mm"
TEE_LOAD_ADDR = "0xbe000000"

IMAGE_INSTALL_append += " \
		imx-boot \
		openssh-sftp openssh-sftp-server \
		test-suite \
		linux-sdio-driver-209a \
		iw wpa-supplicant \
		msc-ldk-verification-wlan \
		\
		python-pyserial python-pybluez \
		python3-spidev python3-pybluez \
		\
		imx-test \
		packagegroup-fsl-tools-benchmark \
		stress dhrystone devmem2 memtester evtest fb-test \
		"

ROOTFS_POSTPROCESS_COMMAND_remove += " remove_boot; "
