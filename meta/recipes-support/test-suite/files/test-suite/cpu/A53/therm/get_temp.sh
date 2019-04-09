#!/bin/sh

DATE=$(date "+%H:%M:%S")
TEMP=$(($(cat /sys/devices/virtual/thermal/thermal_zone0/temp)/1000))
printf "%s: %.2f \n" "${DATE}" ${TEMP}
