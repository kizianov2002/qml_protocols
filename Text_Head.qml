// Text_Head.qml
import QtQuick 2.5
import QtQuick.Controls 1.4

Text {
	id: text_head
	height: 35
	font.family: "Tahoma"
    font.bold: true
	font.pixelSize: 20
	font.weight: Font.Bold
	fontSizeMode: Text.Fit
	wrapMode: Text.NoWrap
	horizontalAlignment: Text.AlignLeft
	verticalAlignment: Text.AlignTop
	color: "#ffffff"
	style: Text.Outline
	styleColor: "#000000"
}
