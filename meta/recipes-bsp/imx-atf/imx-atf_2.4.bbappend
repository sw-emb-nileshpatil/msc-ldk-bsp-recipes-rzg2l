# Copyright (C) 2021 AVNET Embedded, MSC Technologies GmbH
DESCRIPTION = "i.MX U-Boot suppporting i.MX reference boards."

require ../../../../../meta-msc-ldk-core-recipes.git/msc-git.inc
require msc-git-src.inc

SRCREV = "2c222d498dc2071515231090b2bc5039a2a98f4a"

EXTRA_OEMAKE += " \
	IMX_BOOT_UART_BASE="${IMX_BOOT_UART_BASE}" \
	"
