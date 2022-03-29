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

export BRIGHTNESS=${1:-255}
echo "${BRIGHTNESS}" > /sys/devices/platform/lcd1_backlight/backlight/lcd1_backlight/brightness
