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

printf "=========================================================== \n"
cat /sys/devices/platform/soc@0/30800000.bus/30a20000.i2c/i2c-0/0-002d/sn65dsi83_stat
printf "=========================================================== \n"
cat /sys/devices/platform/soc@0/30800000.bus/30a20000.i2c/i2c-0/0-002d/sn65dsi83_reg
printf "=========================================================== \n"
