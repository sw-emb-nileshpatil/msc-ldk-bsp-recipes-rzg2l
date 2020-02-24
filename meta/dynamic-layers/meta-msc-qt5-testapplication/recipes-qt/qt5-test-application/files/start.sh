#!/bin/sh
#
#   @copyright  Copyright (C) 2017 by MSC Technologies GmbH
#   @author     Waldemar Glensk <waldemar.glensk@avnet.com>
#
#   GPL License
#
#   Version 2.0, June 1991
#
#   http://www.gnu.org/licenses/old-licenses/gpl-2.0
#
#   This program is free software; you can redistribute it and/or
#   modify it under the terms of the GNU General Public License
#   as published by the Free Software Foundation; version 2
#   of the License.
#
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public License
#   along with this program; if not, write to the Free Software2015
#   Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#   MA  02110-1301, USA.
#

export LOG_DIR="./logs"

mkdir -p ${LOG_DIR}

DATE=$(date "+%Y-%m-%d-%H-%M")
TESTAPP_LOG_FILE="${LOG_DIR}/testapp-${DATE}.log"

rm /etc/system-test-controller.d -rf
rm /etc/system-test-controller.cfg
ifconfig eth0 192.168.100.50

for sd in  a b; do
    dev=/dev/sd${sd}1
    if [ -b $dev ] ; then
	mp=$(mount |grep $dev | cut -d\  -f3)
	[ "$mp" != "" ] && echo $dev mounted on $mp
	[ "$mp" != "" ] && umount $dev
	echo checking $dev
	fsck.vfat -y $dev 2>/dev/null
	[ "$mp" != "" ] && mount $dev $mp
	# erase old test files - which may differ in size
	echo erasing $dev
	rm -f $mp/*
    fi
done

. /etc/profile.d/weston.sh
. /etc/profile.d/qt5.sh

./start-video0.sh &

sleep 3s

./qt-test-application &>${TESTAPP_LOG_FILE} &
