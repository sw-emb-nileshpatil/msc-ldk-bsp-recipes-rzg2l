# Copyright (C) 2021 AVNET Embedded, MSC Technologies GmbH
DESCRIPTION = "i.MX U-Boot suppporting i.MX reference boards."

require ../../../../../meta-msc-ldk-core-recipes.git/msc-git.inc
require msc-git-src.inc

SRCREV = "b0b7968d9bec0978d3249c059eb2846489a9bf56"

EXTRA_OEMAKE += " \
    DTC_FLAGS=-@ \
"
