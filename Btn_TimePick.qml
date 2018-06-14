import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 1.4



Column {
    id: column
    width: 90
    height: 20

    property string text: "00:00:00"
    property string hh: text.substring(0,2)
    property string mm: text.substring(3,5)
    property string ss: text.substring(6,8)

    Button {
        id: button
        text: column.text
        anchors.fill: parent

        onClicked: {
            if (row.visible) {
                hh = "00" + te_hh.text
                hh = hh.substring(hh.length-2, hh.length)
                mm = "00" + te_mm.text
                mm = mm.substring(mm.length-2, mm.length)
                ss = "00" + te_ss.text
                ss = ss.substring(ss.length-2, ss.length)
                column.text = hh + ":" + mm + ":" + ss
            }
            if (!row.visible) {
                te_hh.text = hh
                te_mm.text = mm
                te_ss.text = ss
            }
            row.visible = !row.visible
        }
    }

    Row {
        id: row
        height: 20
        visible: false
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.top: button.bottom
        anchors.topMargin: 0
        z: 10

        TextInput {
            id: te_hh
            width: 23
            height: 20
            //text: qsTr("00")
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 14

            inputMask: "00"
            //validator: RegExpValidator { regExp: /^[0-5][0-9]$/ }
            //validator: RegExpValidator { regExp: /^[0-1][0-9]|2[0-3]$/ }
            //validator: RegExpValidator { regExp: /^2[0-3]$/ }

            Rectangle {
                id: rectangle
                color: "#ffffff"
                radius: 0
                border.width: 1
                z: -1
                anchors.fill: parent
            }

            onTextChanged: {
                te_hh.text = te_hh.text.trim()
                hh = "00" + te_hh.text
                hh = hh.substring(hh.length-2, hh.length)
                column.text = hh + ":" + mm + ":" + ss
            }
        }

        TextInput {
            id: te_mm
            width: 23
            height: 20
            //text: qsTr("00")
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 14

            inputMask: "00"
            //validator: RegExpValidator { regExp: /^[0-5][0-9]$/ }

            Rectangle {
                id: rectangle1
                color: "#ffffff"
                radius: 0
                border.width: 1
                z: -1
                anchors.fill: parent
            }

            onTextChanged: {
                te_mm.text = te_mm.text.trim()
                mm = "00" + te_mm.text
                mm = mm.substring(mm.length-2, mm.length)
                column.text = hh + ":" + mm + ":" + ss
            }
        }

        TextInput {
            id: te_ss
            width: 23
            height: 20
            //text: qsTr("00")
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 14

            inputMask: "00"
            //validator: RegExpValidator { regExp: /^[0-5][0-9]$/ }

            Rectangle {
                id: rectangle2
                color: "#ffffff"
                border.width: 1
                z: -1
                anchors.fill: parent
            }

            onTextChanged: {
                te_ss.text = te_ss.text.trim()
                ss = "00" + te_ss.text
                ss = ss.substring(ss.length-2, ss.length)
                column.text = hh + ":" + mm + ":" + ss
            }
        }

        Button {
            id: bn_ok
            width: 21
            height: 20
            text: qsTr("ok")

            onClicked: {
                hh = "00" + te_hh.text
                hh = hh.substring(hh.length-2, hh.length)
                mm = "00" + te_mm.text
                mm = mm.substring(mm.length-2, mm.length)
                ss = "00" + te_ss.text
                ss = ss.substring(ss.length-2, ss.length)
                column.text = hh + ":" + mm + ":" + ss

                row.visible = false
            }
        }

    }

}
