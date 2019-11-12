/*
 * Copyright (C) 2019 AVNET Integrated, MSC Technologies GmbH
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License as
 * published by the Free Software Foundation version 2.
 *
 * This program is distributed "as is" WITHOUT ANY WARRANTY of any
 * kind, whether express or implied; without even the implied warranty
 * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 */

import QtQuick 2.0
import QtGraphicalEffects 1.0

Item {
	id: touch_area
	width: 100
	height: 100

	Rectangle {
			id: background
			anchors.fill: touch_area
			color: "green"
	}

	ColorOverlay {
			id: overlay
			anchors.fill: background
			source: background
			color: "red"
			visible: false
	}

	MouseArea {
			anchors.fill: background
			onClicked: {
					overlay.visible = !overlay.visible
			}
	}
}

