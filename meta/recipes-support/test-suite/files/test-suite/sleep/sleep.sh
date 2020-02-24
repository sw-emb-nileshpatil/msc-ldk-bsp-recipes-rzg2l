#!/bin/sh

disable_slot()
{
	BUS_ID=$1
	PMIC_ADD=$2
	REG_ADDR=$3
	val_old=$(i2cget -y ${BUS_ID} ${PMIC_ADDR} ${REG_ADDR})
	val_new=$(( val_old & 0xf0 ))
	val_new=$(( val_new | 0x03 ))
	printf "%02x:%02x:%02x ... 0x%02x ==> 0x%02x \n" ${BUS_ID} ${PMIC_ADDR} ${REG_ADDR} ${val_old} ${val_new}
	i2cset -y ${BUS_ID} ${PMIC_ADDR} ${REG_ADDR} ${val_new}
}

set_to_auto_mode()
{
	BUS_ID=$1
	PMIC_ADD=$2
	REG_ADDR=$3
	val_old=$(i2cget -y ${BUS_ID} ${PMIC_ADDR} ${REG_ADDR})
	val_new=$(( val_old & 0x3f ))
	printf "%02x:%02x:%02x ... 0x%02x ==> 0x%02x \n" ${BUS_ID} ${PMIC_ADDR} ${REG_ADDR} ${val_old} ${val_new}
	i2cset -y ${BUS_ID} ${PMIC_ADDR} ${REG_ADDR} ${val_new}
}

BUS_ID=0
PMIC_ADDR="0x31"
disable_slot ${BUS_ID} ${PMIC_ADDR} 0x16
disable_slot ${BUS_ID} ${PMIC_ADDR} 0x17
#disable_slot ${BUS_ID} ${PMIC_ADDR} 0x18
disable_slot ${BUS_ID} ${PMIC_ADDR} 0x1b
disable_slot ${BUS_ID} ${PMIC_ADDR} 0x1c
disable_slot ${BUS_ID} ${PMIC_ADDR} 0x1f
set_to_auto_mode ${BUS_ID} ${PMIC_ADDR} 0x32
i2cset -y ${BUS_ID} ${PMIC_ADDR} 0x3e 0x14

PMIC_ADDR="0x33"
disable_slot ${BUS_ID} ${PMIC_ADDR} 0x16
#disable_slot ${BUS_ID} ${PMIC_ADDR} 0x17
disable_slot ${BUS_ID} ${PMIC_ADDR} 0x19
disable_slot ${BUS_ID} ${PMIC_ADDR} 0x1b
disable_slot ${BUS_ID} ${PMIC_ADDR} 0x1c
disable_slot ${BUS_ID} ${PMIC_ADDR} 0x1d
disable_slot ${BUS_ID} ${PMIC_ADDR} 0x1e
disable_slot ${BUS_ID} ${PMIC_ADDR} 0x1f
set_to_auto_mode ${BUS_ID} ${PMIC_ADDR} 0x31

# echo enabled > /sys/class/tty/ttymxc0/power/wakeup

echo mem > /sys/power/state
