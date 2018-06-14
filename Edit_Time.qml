// Edit_Time.qml
import QtQuick 2.5
import QtQuick.Controls 1.4

Rectangle {
	id: rect
    width: 90
    height: 22
    border.width: 1
    border.color: "#000055"
    radius: 1
	
    property string text: "0000000000"
    property string inputMask: "99:99:99"

    /*TextField{
        id: te_field
        text: "acd123"
        color: "#002255"
        anchors.fill: parent
        rightPadding: 0
        bottomPadding: 0
        topPadding: 0
        leftPadding: 0
        horizontalAlignment: Text.AlignHCenter
        inputMethodHints: Qt.ImhDigitsOnly
        font.family: "Tahoma"
        font.pixelSize: 11
        font.bold: true

        inputMask: "dd:dd:dd"
        validator: RegExpValidator { regExp: /^([0-1][0-9][0-5][0-9][0-5][0-9])|(2[0-3][0-5][0-9][0-5][0-9])$/ }

        background:Rectangle{
            border.color:"#223344"
            color: "#ffffff"
            border.width:0
            //radius:(width * 0.05)
        }
    }*/

    TextInput {
        id: te_field
        horizontalAlignment: Text.AlignHCenter
        width: 72
        height: 17
        anchors.topMargin: 3
        anchors.leftMargin: 4
        anchors.rightMargin: 4
		anchors.fill: parent
        inputMask: rect.inputMask
        validator: IntValidator{bottom:0; top:999999}
    }
}
