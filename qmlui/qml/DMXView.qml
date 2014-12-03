/*
  Q Light Controller Plus
  DMXView.qml

  Copyright (c) Massimo Callegari

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0.txt

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
*/

import QtQuick 2.3
import "FixtureUtils.js" as FxUtils

Flickable {
    id: fixtureDMXView
    anchors.fill: parent
    anchors.margins: 20

    contentHeight: parent.height

    property variant fxList: fixtureManager.fixtures

    Flow {
        spacing: 5
        anchors.fill: parent

        Repeater {
            model: fixtureManager.fixturesCount
            delegate:
                FixtureDMXItem {
                    fixtureObj: fxList[index]
                }
        }
    }

}
