// Text_LabBold.qml
import QtQuick 2.5
import QtQuick.Controls 1.4

Text {
    id: text_labbold
	font.family: "Arial"
    font.bold: true
	font.pixelSize: 15
	font.weight: Font.Bold
	horizontalAlignment: Text.AlignRight
	verticalAlignment: Text.AlignVCenter
    color: "#ffff88"
	styleColor: "#000000"
	style: Text.Outline
}
