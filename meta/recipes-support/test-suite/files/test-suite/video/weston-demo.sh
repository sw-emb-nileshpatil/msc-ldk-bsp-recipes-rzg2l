#!/bin/sh
# Copyright (C) 2019 AVNET Integrated, MSC Technologies GmbH
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

. /etc/profile.d/weston.sh

for idx in {1..3};
do
	weston-presentation-shm &>/dev/null &
	weston-simple-egl &>/dev/null &
	weston-simple-damage &>/dev/null &
	weston-simple-shm &>/dev/null &
	weston-subsurfaces &>/dev/null &
done
