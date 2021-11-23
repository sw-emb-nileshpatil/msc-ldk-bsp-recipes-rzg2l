# Copyright (C) 2021 AVNET Embedded, MSC Technologies GmbH

INITSCRIPT_NAME = "${@bb.utils.contains("DISTRO_FEATURES", "systemd", "", "hostapd", d)}"
