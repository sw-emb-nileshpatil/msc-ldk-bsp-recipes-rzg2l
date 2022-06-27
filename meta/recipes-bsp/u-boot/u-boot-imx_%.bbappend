# Copyright (C) 2021 AVNET Embedded, MSC Technologies GmbH
DESCRIPTION = "i.MX U-Boot suppporting i.MX reference boards."

require ../../../../../meta-msc-ldk-core-recipes.git/msc-git.inc
require msc-git-src.inc

SRCREV = "ec4ccda90389203a9448d1da52915f3c2ad4149d"

EXTRA_OEMAKE += " \
    DTC_FLAGS=-@ \
"
