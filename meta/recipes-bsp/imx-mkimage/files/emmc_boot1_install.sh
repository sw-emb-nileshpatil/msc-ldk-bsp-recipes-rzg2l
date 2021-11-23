#!/bin/sh
# Copyright (C) 2021 AVNET Embedded, MSC Technologies GmbH
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License as
# published by the Free Software Foundation version 2.
# 
# This program is distributed "as is" WITHOUT ANY WARRANTY of any
# kind, whether express or implied; without even the implied warranty
# of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#

EMMC_DEV="mmcblk0"
BOOT_PART="${EMMC_DEV}boot1"
IMAGE="imx-boot-sm2s-imx8mm-sd.bin-flash_board"

echo 0 > /sys/block/${BOOT_PART}/force_ro
dd if=/dev/zero of=/dev/${BOOT_PART} &>/dev/null
dd if=${IMAGE} of=/dev/${BOOT_PART} bs=1k seek=33 conv=fsync
mmc bootpart enable 2 0 /dev/${EMMC_DEV}
echo 1 > /sys/block/${BOOT_PART}/force_ro
