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

DIR=$(pwd)

cd /home/root/test-suite/video
sh weston-demo.sh &>/dev/null &

sleep 1s

cd /home/root/test-suite/touch
sh qml-1.sh &>/dev/null &

cd ${DIR}

exit 0
