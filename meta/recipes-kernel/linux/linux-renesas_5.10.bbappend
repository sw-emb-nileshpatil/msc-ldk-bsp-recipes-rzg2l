# List of kernel patches

KERVER = "5.10"

FILESEXTRAPATHS_prepend := "${THISDIR}/${KERVER}:"

SRC_URI += " \
		file://0009-sm2s-rzg2ul-Added-Device-Tree-changes-for-renesas.patch \
	   	file://sm2s.cfg \
"

KERNEL_CONFIG_FRAGMENTS_append = " ${WORKDIR}/sm2s.cfg"
