#!/bin/sh
# Copyright (C) 2019 MSC VERTRIEBS GMBH - http://www.msc-ge.com/
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

DEV="mmcblk0"
BOOT="boot0"
IMAGE="flash.bin"

echo 0 > /sys/block/${DEV}${BOOT}/force_ro
dd if=${IMAGE} of=/dev/${DEV}${BOOT} bs=1k seek=33 conv=fsync
echo 1 > /sys/block/${DEV}${BOOT}/force_ro

./enable_${BOOT}.sh
