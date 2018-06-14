// Edit_Line.qml
import QtQuick 2.5
import QtQuick.Controls 1.4

Rectangle {
    id: rect
    width: 150
    height: 22
    color: "#feffbb"
	border.width: 2
    border.color: "#000055"
    radius: 5
    anchors.verticalCenter: parent.verticalCenter
	
	property string text: " - // - "
    property string inputMask: ""

	TextInput {
        id: te_field
        width: 142
        height: 17
        font.pixelSize: 13
        inputMask: rect.inputMask
        text: rect.text
        cursorVisible: true
        anchors.topMargin: 2
        anchors.leftMargin: 4
        anchors.rightMargin: 4
        anchors.fill: parent
	}
}
