#!/bin/bash
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

server_ip=$1
iface=$2
MAX_RTT_AVG=5000 #usecs
PING_COUNT=25

printf "testing server %s \n" $server_ip
output=$(fping -I ${iface} -b 1500 -p 10 -c ${PING_COUNT} -q ${server_ip} 2>&1)
ret=$?
if [ "$ret" !=  "0" ] ; then
	printf "FAIL, server not reachable.\n"
	exit 1
fi

echo "${output}"

tx=$(echo ${output}  | awk -F " " '{ print $5 }' | awk -F "/" '{ print $1 }')
rx=$(echo ${output}  | awk -F " " '{ print $5 }' | awk -F "/" '{ print $2 }')
rtt_avg=$(echo ${output} | awk -F " " '{ print $8 }' | awk -F "/" '{ printf "%.0f", $2 * 1000 }')

if [ "${tx}" != "${PING_COUNT}" ] || [ "${tx}" != "${rx}" ] ; then
	printf "FAIL, Packet loss detected\n"
	exit 1
fi

if [ ${rtt_avg} -gt ${MAX_RTT_AVG} ] ; then
	printf "FAIL, avg round trip time too high (>%dusecs).\n" ${MAX_RTT_AVG}
	exit 1
fi

printf "OK\n"
exit 0
