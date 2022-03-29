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

GPIO_ROOT="/sys/class/gpio"

function imx_gpio() {
	bank=$1
	idx=$2
	id=$(( (bank-1)*32+idx ))
	echo $id
}

gpios[0]=$(imx_gpio 1 0)
gpios[1]=$(imx_gpio 1 1)
gpios[2]=$(imx_gpio 1 3)
gpios[3]=$(imx_gpio 1 5)
gpios[4]=$(imx_gpio 1 6)
gpios[5]=$(imx_gpio 5 2)
gpios[6]=$(imx_gpio 5 1)
gpios[7]=$(imx_gpio 4 22)
gpios[8]=$(imx_gpio 3 25)
gpios[9]=$(imx_gpio 4 28)
gpios[10]=$(imx_gpio 1 9)
gpios[11]=$(imx_gpio 1 7)

function gpio_export {
	gpio_id=$1
	if [ ! -d "$GPIO_ROOT/gpio${gpio_id}" ]; then 
		echo $gpio_id > $GPIO_ROOT/export
	fi
}

function gpio_unexport {
	gpio_id=$1
	if [ -d "$GPIO_ROOT/gpio${gpio_id}" ]; then	
		echo $gpio_id > $GPIO_ROOT/unexport
	fi
}

function gpio_set_as_output {
	gpio_id=$1
	echo "out" > $GPIO_ROOT/gpio$gpio_id/direction
}

function gpio_set_as_input {
	gpio_id=$1
	echo "in" > $GPIO_ROOT/gpio$gpio_id/direction
}

function gpio_set_value {
	gpio_id=$1
	value=$2
	echo $value > $GPIO_ROOT/gpio$gpio_id/value
}

function gpio_get_value {
	gpio_id=$1
	cat $GPIO_ROOT/gpio$gpio_id/value
}

function gpio_show_ids {
	for gpio_idx in ${!gpios[*]}
	do
		gpio_id=${gpios[$gpio_idx]}
		printf "GPIO: %2d (%2d)\n" $gpio_idx $gpio_id
	done
}

