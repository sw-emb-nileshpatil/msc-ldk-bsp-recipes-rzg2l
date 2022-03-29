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

. /etc/profile.d/weston.sh

gst-launch-1.0 v4l2src device=/dev/video0 ! \
	video/x-raw,width=1280,height=720 ! glimagesink

