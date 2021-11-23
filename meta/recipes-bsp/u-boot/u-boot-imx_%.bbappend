# Copyright (C) 2021 AVNET Embedded, MSC Technologies GmbH
DESCRIPTION = "i.MX U-Boot suppporting i.MX reference boards."

require ../../../../../meta-msc-ldk-core-recipes.git/msc-git.inc
require msc-git-src.inc

SRCREV = "7ffbb47d7be01298a2a7315cddf58968b273578f"

EXTRA_OEMAKE += " \
    DTC_FLAGS=-@ \
"
