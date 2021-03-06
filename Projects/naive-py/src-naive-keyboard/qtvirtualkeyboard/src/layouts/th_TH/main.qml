/****************************************************************************
**
** Copyright (C) 2018 The Qt Company Ltd.
** Contact: https://www.qt.io/licensing/
**
** This file is part of the Qt Virtual Keyboard module of the Qt Toolkit.
**
** $QT_BEGIN_LICENSE:GPL$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see https://www.qt.io/terms-conditions. For further
** information use the contact form at https://www.qt.io/contact-us.
**
** GNU General Public License Usage
** Alternatively, this file may be used under the terms of the GNU
** General Public License version 3 or (at your option) any later version
** approved by the KDE Free Qt Foundation. The licenses are as published by
** the Free Software Foundation and appearing in the file LICENSE.GPL3
** included in the packaging of this file. Please review the following
** information to ensure the GNU General Public License requirements will
** be met: https://www.gnu.org/licenses/gpl-3.0.html.
**
** $QT_END_LICENSE$
**
****************************************************************************/

import QtQuick
import QtQuick.Layouts
import QtQuick.VirtualKeyboard
import QtQuick.VirtualKeyboard.Components

KeyboardLayoutLoader {
    inputMode: InputEngine.InputMode.Latin
    function createInputMethod() {
        return Qt.createQmlObject('import QtQuick; import QtQuick.VirtualKeyboard.Plugins; ThaiInputMethod {}', parent, "main.qml")
    }
    sharedLayouts: [ "symbols" ]
    sourceComponent: InputContext.shiftActive ? page2 : page1
    Component {
        id: page1
        KeyboardLayout {
            keyWeight: 160
            readonly property real normalKeyWidth: normalKey.width
            readonly property real functionKeyWidth: mapFromItem(normalKey, normalKey.width / 2, 0).x
            KeyboardRow {
                Layout.preferredHeight: 3
                smallTextVisible: true
                KeyboardColumn {
                    KeyboardRow {
                        Key {
                            text: "???"
                            alternativeKeys: "???1???"
                        }
                        Key {
                            id: normalKey
                            text: "/"
                            alternativeKeys: "/2???"
                        }
                        Key {
                            text: "_"
                            alternativeKeys: "_3???"
                        }
                        Key {
                            text: "???"
                            alternativeKeys: "???4???"
                        }
                        Key {
                            text: "???"
                            alternativeKeys: "???5???"
                        }
                        Key {
                            text: "\u0E38"
                            displayText: " \u0E38"
                            alternativeKeys: [ "\u0E38", " \u0E39" ]
                        }
                        Key {
                            text: "\u0E36"
                            displayText: " \u0E36"
                        }
                        Key {
                            text: "???"
                            alternativeKeys: "???6???"
                        }
                        Key {
                            text: "???"
                            alternativeKeys: "???7???"
                        }
                        Key {
                            text: "???"
                            alternativeKeys: "???8???"
                        }
                        Key {
                            text: "???"
                            alternativeKeys: "??????9"
                        }
                        Key {
                            text: "???"
                            alternativeKeys: "??????0"
                        }
                    }
                    KeyboardRow {
                        Key {
                            text: "???"
                        }
                        Key {
                            text: "???"
                            alternativeKeys: "???\""
                        }
                        Key {
                            text: " ???"
                            alternativeKeys: " ??????"
                        }
                        Key {
                            text: "???"
                            alternativeKeys: "??????"
                        }
                        Key {
                            text: "???"
                            alternativeKeys: "??????"
                        }
                        Key {
                            text: "\u0E31"
                            displayText: " \u0E31"
                            alternativeKeys: "\u0E31???"
                        }
                        Key {
                            text: "\u0E35"
                            displayText: " \u0E35"
                            alternativeKeys: [ "\u0E35", " \u0E4A" ]
                        }
                        Key {
                            text: "???"
                            alternativeKeys: "??????"
                        }
                        Key {
                            text: "???"
                            alternativeKeys: "??????"
                        }
                        Key {
                            text: "???"
                            alternativeKeys: "??????"
                        }
                        Key {
                            text: "???"
                            alternativeKeys: "??????"
                        }
                        Key {
                            text: "???"
                        }
                    }
                    KeyboardRow {
                        Key {
                            text: "???"
                            alternativeKeys: "??????"
                        }
                        Key {
                            text: "???"
                            alternativeKeys: "??????"
                        }
                        Key {
                            text: "???"
                            alternativeKeys: "??????"
                        }
                        Key {
                            text: "???"
                            alternativeKeys: "??????"
                        }
                        Key {
                            text: "???"
                            alternativeKeys: "??????"
                        }
                        Key {
                            text: "\u0E49"
                            displayText: " \u0E49"
                            alternativeKeys: [ "\u0E49", " \u0E47" ]
                        }
                        Key {
                            text: "\u0E48"
                            displayText: " \u0E48"
                            alternativeKeys: [ "\u0E48", " \u0E4B" ]
                        }
                        Key {
                            text: "???"
                            alternativeKeys: "??????"
                        }
                        Key {
                            text: "???"
                            alternativeKeys: "??????"
                        }
                        Key {
                            text: "???"
                        }
                        Key {
                            text: "???"
                        }
                        Key {
                            text: "???"
                        }
                    }
                    KeyboardRow {
                        ShiftKey {
                        }
                        Key {
                            text: "???"
                        }
                        Key {
                            text: "???"
                        }
                        Key {
                            text: "???"
                            alternativeKeys: "??????"
                        }
                        Key {
                            text: "???"
                            alternativeKeys: "??????"
                        }
                        Key {
                            text: "\u0E34"
                            displayText: " \u0E34"
                            alternativeKeys: [ "\u0E34", " \u0E3A" ]
                        }
                        Key {
                            text: "\u0E37"
                            displayText: " \u0E37"
                            alternativeKeys: [ "\u0E37", " \u0E4C" ]
                        }
                        Key {
                            text: "???"
                        }
                        Key {
                            text: "???"
                            alternativeKeys: "??????"
                        }
                        Key {
                            text: "???"
                            alternativeKeys: "??????"
                        }
                        Key {
                            text: "???"
                            alternativeKeys: "??????"
                        }
                        BackspaceKey {
                        }
                    }
                }
            }
            KeyboardRow {
                SymbolModeKey {
                    weight: functionKeyWidth
                    Layout.fillWidth: false
                }
                Key {
                    key: Qt.Key_Comma
                    weight: normalKeyWidth
                    Layout.fillWidth: false
                    text: ","
                    smallText: "\u2699"
                    smallTextVisible: true
                    highlighted: true
                }
                SpaceKey {
                }
                Key {
                    key: Qt.Key_Period
                    weight: normalKeyWidth
                    Layout.fillWidth: false
                    text: "."
                    alternativeKeys: "!.?"
                    smallText: "!?"
                    smallTextVisible: true
                    highlighted: true
                }
                EnterKey {
                    weight: functionKeyWidth
                    Layout.fillWidth: false
                }
            }
        }
    }
    Component {
        id: page2
        KeyboardLayout {
            keyWeight: 160
            readonly property real normalKeyWidth: normalKey.width
            readonly property real functionKeyWidth: mapFromItem(normalKey, normalKey.width / 2, 0).x
            KeyboardRow {
                Layout.preferredHeight: 3
                smallTextVisible: true
                KeyboardColumn {
                    KeyboardRow {
                        Key {
                            text: "+"
                        }
                        Key {
                            id: normalKey
                            text: "???"
                        }
                        Key {
                            text: "???"
                        }
                        Key {
                            text: "???"
                        }
                        Key {
                            text: "???"
                        }
                        Key {
                            text: "\u0E39"
                            displayText: " \u0E39"
                        }
                        Key {
                            text: "???"
                        }
                        Key {
                            text: "???"
                        }
                        Key {
                            text: "???"
                        }
                        Key {
                            text: "???"
                        }
                        Key {
                            text: "???"
                        }
                        Key {
                            text: "???"
                        }
                    }
                    KeyboardRow {
                        Key {
                            text: "???"
                        }
                        Key {
                            text: "\""
                        }
                        Key {
                            text: "???"
                        }
                        Key {
                            text: "???"
                        }
                        Key {
                            text: "???"
                        }
                        Key {
                            text: "???"
                        }
                        Key {
                            text: "\u0E4A"
                            displayText: " \u0E4A"
                        }
                        Key {
                            text: "???"
                        }
                        Key {
                            text: "???"
                        }
                        Key {
                            text: "???"
                        }
                        Key {
                            text: "???"
                        }
                        Key {
                            text: ","
                        }
                    }
                    KeyboardRow {
                        Key {
                            text: "???"
                        }
                        Key {
                            text: "???"
                        }
                        Key {
                            text: "???"
                        }
                        Key {
                            text: "???"
                        }
                        Key {
                            text: "???"
                        }
                        Key {
                            text: "\u0E47"
                            displayText: " \u0E47"
                        }
                        Key {
                            text: "\u0E4B"
                            displayText: " \u0E4B"
                        }
                        Key {
                            text: "???"
                        }
                        Key {
                            text: "???"
                        }
                        Key {
                            text: "???"
                        }
                        Key {
                            text: "."
                        }
                        Key {
                            text: "???"
                        }
                    }
                    KeyboardRow {
                        ShiftKey {
                        }
                        Key {
                            text: "("
                        }
                        Key {
                            text: ")"
                        }
                        Key {
                            text: "???"
                        }
                        Key {
                            text: "???"
                        }
                        Key {
                            text: "\u0E3A"
                            displayText: " \u0E3A"
                        }
                        Key {
                            text: "\u0E4C"
                            displayText: " \u0E4C"
                        }
                        Key {
                            text: "?"
                        }
                        Key {
                            text: "???"
                        }
                        Key {
                            text: "???"
                        }
                        Key {
                            text: "???"
                        }
                        BackspaceKey {
                        }
                    }
                }
            }
            KeyboardRow {
                SymbolModeKey {
                    weight: functionKeyWidth
                    Layout.fillWidth: false
                }
                Key {
                    key: Qt.Key_Comma
                    weight: normalKeyWidth
                    Layout.fillWidth: false
                    text: ","
                    smallText: "\u2699"
                    smallTextVisible: true
                    highlighted: true
                }
                SpaceKey {
                }
                Key {
                    key: Qt.Key_Period
                    weight: normalKeyWidth
                    Layout.fillWidth: false
                    text: "."
                    alternativeKeys: "!.?"
                    smallText: "!?"
                    smallTextVisible: true
                    highlighted: true
                }
                EnterKey {
                    weight: functionKeyWidth
                    Layout.fillWidth: false
                }
            }
        }
    }
}
