# Copyright (C) 2021 AVNET Embedded, MSC Technologies GmbH
DESCRIPTION = "i.MX U-Boot suppporting i.MX reference boards."

require ../../../../../meta-msc-ldk-core-recipes.git/msc-git.inc
require msc-git-src.inc

SRCREV = "077beb4cd150cb2beb19cfa4aa4459ff485b8f64"

EXTRA_OEMAKE += " \
    DTC_FLAGS=-@ \
"
