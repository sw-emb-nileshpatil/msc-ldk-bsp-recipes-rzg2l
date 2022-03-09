# Copyright (C) 2021 AVNET Embedded, MSC Technologies GmbH
DESCRIPTION = "i.MX U-Boot suppporting i.MX reference boards."

require ../../../../../meta-msc-ldk-core-recipes.git/msc-git.inc
require msc-git-src.inc

SRCREV = "7d68de141d79ec65554a06f0c9df25c5156243ae"

EXTRA_OEMAKE += " \
    DTC_FLAGS=-@ \
"
