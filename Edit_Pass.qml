// Edit_Pass.qml
import QtQuick 2.5
import QtQuick.Controls 1.4

Rectangle {
    id: rect
    width: 250
    height: 25
    color: "#bbffbb"
	border.width: 2
    border.color: "#000055"
    radius: 5
    anchors.verticalCenter: parent.verticalCenter
	
	property string text: ""
    property string inputMask: ""

	TextInput {
        id: te_field
        text: rect.text
        inputMask: rect.inputMask
		echoMode: TextInput.Password
		passwordCharacter : "#"
        anchors.topMargin: 2
        anchors.leftMargin: 10
        anchors.rightMargin: 10
        anchors.fill: parent
        font.pixelSize: 20
    }
}
