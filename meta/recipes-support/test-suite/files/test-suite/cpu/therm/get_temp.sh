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

DATE=$(date "+%H:%M:%S")
TEMP=$(($(cat /sys/devices/virtual/thermal/thermal_zone0/temp)/1000))
printf "%s: %.2f \n" "${DATE}" ${TEMP}
