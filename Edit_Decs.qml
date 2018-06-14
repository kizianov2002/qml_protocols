// Edit_Decs.qml
import QtQuick 2.5
import QtQuick.Controls 1.4

Rectangle {
    id: rect
    width: 150
    height: 22
    color: "#ccff88"
	border.width: 2
    border.color: "#000055"
    radius: 5
    anchors.verticalCenter: parent.verticalCenter
	
	property string text: " - // - "
    property string inputMask: ""
    property string text_masked: te_field.text

	TextInput {
        id: te_field
        width: 142
        height: 17
        inputMask: rect.inputMask
        text: rect.text
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 13
        cursorVisible: true
        anchors.topMargin: 2
        anchors.leftMargin: 4
        anchors.rightMargin: 4
        anchors.fill: parent
        validator: DoubleValidator 

        onTextChanged: {
            rect.text_masked = text.trim()
            text = rect.text_masked
        }
	}
}
