# Copyright (C) 2021 AVNET Embedded, MSC Technologies GmbH
DESCRIPTION = "i.MX U-Boot suppporting i.MX reference boards."

require ../../../../../meta-msc-ldk-core-recipes.git/msc-git.inc
require msc-git-src.inc

SRCREV = "36740b4edab6be6eba20aa1aad3d96146cde9288"

EXTRA_OEMAKE += " \
    DTC_FLAGS=-@ \
"
