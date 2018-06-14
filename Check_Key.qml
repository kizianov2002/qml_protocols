// Text_LabBold.qml
import QtQuick 2.5
import QtQuick.Controls 1.4

Row {
    id: row
    height: 30
    property bool checked: checkBox.checked
    property string text: "проверка"

    CheckBox {
        id: checkBox
        x: 0
        height: 25
        width: 25
        anchors.verticalCenter: parent.verticalCenter
        text: ""
        scale: 2
        transformOrigin: Item.Left
        checked: false
    }

    Text {
        id: label
        height: 30
        font.family: "Arial"
        font.bold: true
        font.pixelSize: 13
        font.weight: Font.Bold
        color: "#ffc4c4"
        styleColor: "#000000"
        style: Text.Outline
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: checkBox.right
        anchors.leftMargin: 10
        anchors.verticalCenter: parent.verticalCenter
        text: row.text
    }
}

/*CheckBox {
	id: check_key
	checked: false
	font.family: "Arial"
	font.bold: true
    font.pointSize: 11
	font.pixelSize: 13
	font.weight: Font.Bold
	//horizontalAlignment: Text.AlignRight
	//verticalAlignment: Text.AlignVCenter
    //color: "#ff9999"
	//styleColor: "#000000"
	//style: Text.Outline
}*/
