// Edit_User.qml
import QtQuick 2.5
import QtQuick.Controls 1.4

Rectangle {
    id: rect
    width: 250
    height: 25
    color: "#bbbbff"
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
		echoMode: TextInput.Normal
        anchors.topMargin: 2
        anchors.leftMargin: 10
        anchors.rightMargin: 10
        anchors.fill: parent
        font.pixelSize: 20
    }
}
