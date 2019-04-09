# Copyright (C) 2019 AVNET Integrated, MSC Technologies GmbH

INITSCRIPT_NAME = "${@bb.utils.contains("DISTRO_FEATURES", "systemd", "", "hostapd", d)}"