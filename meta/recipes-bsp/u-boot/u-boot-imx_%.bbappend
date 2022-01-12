# Copyright (C) 2021 AVNET Embedded, MSC Technologies GmbH
DESCRIPTION = "i.MX U-Boot suppporting i.MX reference boards."

require ../../../../../meta-msc-ldk-core-recipes.git/msc-git.inc
require msc-git-src.inc

SRCREV = "5d6715ea04103afe2f74b0e189d14504c74ca727"

EXTRA_OEMAKE += " \
    DTC_FLAGS=-@ \
"
