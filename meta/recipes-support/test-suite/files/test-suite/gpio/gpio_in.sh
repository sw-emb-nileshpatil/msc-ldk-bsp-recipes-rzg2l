#!/bin/bash
#
# Copyright (C) 2021 AVNET Embedded
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

source gpio.inc

for gpio_idx in ${!gpios[*]}
do
	gpio_id=${gpios[$gpio_idx]}
	gpio_export $gpio_id
	gpio_set_as_input $gpio_id
	gpio_val=$(gpio_get_value $gpio_id)

	printf "GPIO: %2d (%3d) : %d\n" $gpio_idx $gpio_id $gpio_val
done
