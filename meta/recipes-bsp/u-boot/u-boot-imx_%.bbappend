# Copyright (C) 2021 AVNET Embedded, MSC Technologies GmbH
DESCRIPTION = "i.MX U-Boot suppporting i.MX reference boards."

require ../../../../../meta-msc-ldk-core-recipes.git/msc-git.inc
require msc-git-src.inc

SRCREV = "ef16ec1354fc530ba84f2a829482df837343923d"

EXTRA_OEMAKE += " \
    DTC_FLAGS=-@ \
"
