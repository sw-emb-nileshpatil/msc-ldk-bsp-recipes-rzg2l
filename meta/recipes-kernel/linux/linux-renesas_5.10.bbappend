# List of kernel patches

KERVER = "5.10"

FILESEXTRAPATHS_prepend := "${THISDIR}/${KERVER}:"

SRC_URI += " \
		file://0001-Added-peripheral-support-for-sm2s-rzg2ul-board.patch \
		file://0001-MTD-SPI-NOR-Added-support-for-at25sf321-nor-flash.patch \
		file://0001-sm2s-rzg2ul-Added-required-changes-for-eth-qspi-cloc.patch  \
		file://0001-sm2s-rzg2ul-Added-WiFi-BT-support.patch \
		file://0001-sm2s-rzg2ul-Added-ush-sd-card-modes.patch \
		file://sm2s.cfg \
"

KERNEL_CONFIG_FRAGMENTS_append = " ${WORKDIR}/sm2s.cfg"
