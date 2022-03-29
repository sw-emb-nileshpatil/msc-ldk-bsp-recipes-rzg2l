#!/bin/sh
# Copyright (C) 2022 Avnet Embedded GmbH
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

usage() {
	echo "usage:"
	echo "    $0 <dev> <bitrate>"
	echo " where:"
	echo "    dev = can0, can1, ..."
	echo "    bitrate = 10000, 20000, 50000, 100000, 125000, 250000, 500000, 1000000" 
}

if [ -z "$1" ]; then
	echo "dev not specified!"
	usage
	exit 1
fi

DEV=$1

if [ -z "$2" ]; then
	echo "bitrate not specified!"
	usage
	exit 1
fi

BITRATE=$2

./can_up.sh ${DEV} ${BITRATE}
canfdtest ${DEV}
