import QtQuick 2.5
import QtQuick.Controls 1.4


Rectangle {
    id: rect
    width: 700
    height: 500

    property string head_text: "Данные о транспортном средстве"

    Image {
        id: image
        width: 800
        height: 800
        anchors.fill: parent
        source: "base.jpg"
	}

	Column {
		id: column
        anchors.bottom: rect_DN.top
		anchors.bottomMargin: 0
		anchors.right: parent.right
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.topMargin: 5
		spacing: 30
		anchors.rightMargin: 20
        anchors.leftMargin: 20

        /*Text_Head {
			id: lab_protocol
			width: 500
			height: 25
            text: qsTr("Данные о транспортном средстве")
            anchors.leftMargin: 0
			anchors.right: parent.right
            anchors.top: parent.top
            anchors.rightMargin: 0
            anchors.topMargin: 0
            anchors.left: parent.left
        }*/

        Item {
			id: row_ts_model
            height: 25
			anchors.top: lab_protocol.bottom
            anchors.topMargin: 10
            anchors.right: parent.right
			anchors.rightMargin: 0
			anchors.left: parent.left
			anchors.leftMargin: 0

            Text_Label {
				id: lab_ts_model
                width: 160
                text: qsTr("Марка, модель ТС")
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
				anchors.leftMargin: 0
				horizontalAlignment: Text.AlignRight
				font.pixelSize: 12
			}

            Edit_Line {
                id: edit_ts_model
                height: 20
				anchors.left: lab_ts_model.right
                anchors.leftMargin: 10
                text: ""
                anchors.right: parent.right
                anchors.rightMargin: 0   // qsTr("12345678901234567890123456789012345678901234567890")
            }
		}

        Item {
			id: row_ts_gosnum
			height: 25
			anchors.leftMargin: 0
            anchors.right: parent.right
            anchors.top: row_ts_model.bottom
            anchors.rightMargin: -1
            anchors.topMargin: 5
            anchors.left: parent.left

            Text_Label {
				id: lab_ts_gosnum
				width: 160
				height: 20
				text: qsTr("Государственный\nрегистрационный знак ТС")
                anchors.verticalCenter: parent.verticalCenter
				verticalAlignment: Text.AlignVCenter
				horizontalAlignment: Text.AlignRight
				font.pixelSize: 12
			}

            Edit_Line {
                id: edit_ts_gosnum
				width: 150
                height: 20
                anchors.left: lab_ts_gosnum.right
                anchors.leftMargin: 10
                text: ""   // qsTr("123456789012345")
            }
		}

        Item {
			id: row_ts_categ
            height: 35
			anchors.rightMargin: 0
			anchors.leftMargin: 0
			anchors.right: parent.right
			anchors.top: row_ts_gosnum.bottom
            anchors.topMargin: 5
			anchors.left: parent.left

            Text_Label {
				id: lab_ts_categ
				width: 160
                height: 20
                text: qsTr("Категория ТС")
                anchors.verticalCenter: parent.verticalCenter
				anchors.top: parent.top
				anchors.topMargin: 10
				anchors.leftMargin: 0
				horizontalAlignment: Text.AlignRight
				font.pixelSize: 12
				verticalAlignment: Text.AlignVCenter
				anchors.left: parent.left
			}

            Edit_Code {
                id: edit_ts_categ_code
                y: 0
                width: 50
                height: 30
                radius: 3
                anchors.verticalCenterOffset: 0
                anchors.left: lab_ts_categ.right
                anchors.leftMargin: 10
                inputMask: "X"
                text: combo_ts_categ.currentText
            }

			Combo_Tab22 {
                id: combo_ts_categ
                anchors.left: edit_ts_categ_code.right
                anchors.leftMargin: 10
                currentIndex: 0
                anchors.right: parent.right
                anchors.rightMargin: 0
            }
        }

        Item {
			id: row_ts_owner_categ
            height: 35
            visible: false
			anchors.right: parent.right
            anchors.top: row_ts_categ.bottom
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            anchors.topMargin: 5
            anchors.left: parent.left

            Text_Label {
				id: lab_ts_owner_categ
				width: 160
				height: 20
                text: qsTr("Категория владельца")
                anchors.verticalCenter: parent.verticalCenter
				anchors.leftMargin: 0
				font.pixelSize: 12
				anchors.left: parent.left
				horizontalAlignment: Text.AlignRight
				verticalAlignment: Text.AlignVCenter
			}

            Edit_Code {
                id: edit_ts_owner_categ_code
                y: 0
                width: 50
                height: 30
                radius: 3
                anchors.verticalCenterOffset: 0
                anchors.left: lab_ts_owner_categ.right
                anchors.leftMargin: 10
                inputMask: "x"
                text: combo_ts_owner_categ.currentText
            }

			Combo_Tab61 {
				id: combo_ts_owner_categ
                currentIndex: 0
				anchors.right: parent.right
				anchors.rightMargin: 0
                anchors.left: edit_ts_owner_categ_code.right
                anchors.leftMargin: 10
            }
        }
    }

}
