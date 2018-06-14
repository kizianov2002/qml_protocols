// Edit_Date.qml
import QtQuick 2.5
import QtQuick.Controls 1.4

Rectangle {
	id: rect
    width: 80
    height: 20
	color: "#aaffaa"
	border.width: 2
    border.color: "#000055"
    radius: 5
	
	property string text: "01.01.1900"
    property string inputMask: "99.99.9999"

	TextInput {
        id: te_field
        text: rect.text
        horizontalAlignment: Text.AlignHCenter
        width: 72
        height: 17
        anchors.topMargin: 3
        anchors.leftMargin: 4
        anchors.rightMargin: 4
		anchors.fill: parent
        inputMask: rect.inputMask
		font.pixelSize: 12
	}
}
