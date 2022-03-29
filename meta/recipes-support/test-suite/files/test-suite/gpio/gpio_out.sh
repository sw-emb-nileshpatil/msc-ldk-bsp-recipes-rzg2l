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

	printf "GPIO: %2d (%2d)\n" $gpio_idx $gpio_id

	gpio_export $gpio_id
	gpio_set_as_output $gpio_id

	val_wr=0

	for idx in {1..10}
	do
		val_wr=$((1-val_wr))
		gpio_set_value $gpio_id $val_wr
		val_rd=$(gpio_get_value $gpio_id)
		printf "   val_wr: %d, val_rd: %d\n" $val_wr $val_rd
		sleep 1s
	done

	gpio_unexport $gpio_id
done
