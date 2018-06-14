// Edit_Text.qml
import QtQuick 2.5
import QtQuick.Controls 1.4

Rectangle {
    id: rect
    width: 150
    height: 50
    color: "#ffd6ff"
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
        text: ""   // qsTr("Text Edit")
		anchors.topMargin: 3
		anchors.leftMargin: 5
        anchors.fill: parent
        wrapMode: TextEdit.WordWrap
	}
}
