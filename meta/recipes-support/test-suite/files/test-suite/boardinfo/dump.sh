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

BI_PATH="/sys/firmware/devicetree/base/boardinfo"
BI_COMPANY="$(tr -d '\0' < ${BI_PATH}/company)"
BI_FORM_FACTOR="$(tr -d '\0' < ${BI_PATH}/form_factor)"
BI_PLATFORM="$(tr -d '\0' < ${BI_PATH}/platform)"
BI_PROCESSOR="$(tr -d '\0' < ${BI_PATH}/processor)"
BI_FEATURE="$(tr -d '\0' < ${BI_PATH}/feature)"
BI_REVISION="$(tr -d '\0' < ${BI_PATH}/revision)"
BI_SERIAL="$(tr -d '\0' < ${BI_PATH}/serial)"

printf "company     : %s \n" ${BI_COMPANY}
printf "form-factor : %s \n" ${BI_FORM_FACTOR}
printf "platform    : %s \n" ${BI_PLATFORM}
printf "processor   : %s \n" ${BI_PROCESSOR}
printf "feature     : %s \n" ${BI_FEATURE}
printf "revision    : %s \n" ${BI_REVISION}
printf "serial      : %s \n" ${BI_SERIAL}
