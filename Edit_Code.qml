// Edit_Code.qml
import QtQuick 2.5
import QtQuick.Controls 1.4

Rectangle {
	id: rect
    y: 0
    width: 50
    height: 30
    color: "#000033"
    border.width: 4
    border.color: "#444488"
    radius: 6
    clip: true
    anchors.verticalCenter: parent.verticalCenter
	
    property string text: ""
    property string inputMask: "xxx"
    property string text_masked: te_field.text

	TextInput {
        id: te_field
        width: 142
        height: 16
        color: "#ffffcc"
        inputMask: rect.inputMask
        text: rect.text
        font.pixelSize: 16
        font.bold: true
        horizontalAlignment: Text.AlignHCenter
        anchors.topMargin: 2
        anchors.leftMargin: 2
        anchors.rightMargin: 2
        anchors.fill: parent
        validator: RegExpValidator { regExp: /\d{3,3}(?:,\d{3,3})+$/ }

        readOnly: true
    }
}
