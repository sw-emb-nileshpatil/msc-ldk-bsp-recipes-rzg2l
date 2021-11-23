# Copyright (C) 2021 AVNET Embedded, MSC Technologies GmbH
# Released under the MIT license (see COPYING.MIT for the terms)

require ../../../../../meta-msc-ldk-core-recipes.git/msc-git.inc
require msc-git-src.inc

EXTRA_OEMAKE += " \
	DTC_FLAGS=-@ \
	"
