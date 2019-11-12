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
. /etc/profile.d/qt5.sh

export QML="/usr/bin/qt5/qml"

for idx in {1..10}
do
	${QML} qml-1.qml &
done

