// Edit_Money.qml
import QtQuick 2.5
import QtQuick.Controls 1.4

Rectangle {
    id: rect
    width: 150
    height: 22
    color: "#ffffff"
	border.width: 2
    border.color: "#000055"
    radius: 5
    anchors.verticalCenter: parent.verticalCenter
	
	property string text: "0.0"
    property string inputMask: "000000009.90"
    property string text_masked: te_field.text

	TextInput {
        id: te_field
        width: 142
        height: 17
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 13
        validator: RegExpValidator { regExp: /(\d{1,7})([.,]\d{1,2})?$/ }
        inputMask: rect.inputMask
        cursorVisible: true
        anchors.topMargin: 0
        anchors.leftMargin: 4
        anchors.rightMargin: 4
        anchors.fill: parent
	}
}
