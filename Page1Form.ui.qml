import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Rectangle {
    id: rect
    width: 700
    height: 500

    property string head_text: "Данные о водителе"

    Image {
        id: image
        width: 800
        height: 800
        anchors.fill: parent
        source: "base.jpg"
    }

    Item {
        id: rect_main
        anchors.bottom: rect_DN.top
        anchors.bottomMargin: 0
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.rightMargin: 20
        anchors.leftMargin: 20
        anchors.top: parent.top
        anchors.topMargin: 5

        /*Text_Head {
            id: lab_identify
            width: 500
            height: 25
            text: qsTr("Данные о водителе")
            anchors.top: parent.top
            anchors.topMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0
        }*/

        Item {
            id: row_fam
            height: 25
            anchors.top: lab_identify.bottom
            anchors.topMargin: 10
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0

            Text_Label {
                id: lab_fam
                width: 110
                text: qsTr("Фамилия")
                anchors.left: parent.left
                anchors.leftMargin: 0
            }

            Edit_Line {
                id: edit_fam
                width: 200
                anchors.left: lab_fam.right
                anchors.leftMargin: 10
                text: "" // qsTr("фамилия")
            }
        }

        Item {
            id: row_im
            height: 20
            anchors.top: row_fam.bottom
            anchors.topMargin: 10
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0

            Text_Label {
                id: lab_im
                width: 110
                height: 20
                text: qsTr("Имя")
                anchors.left: parent.left
                anchors.leftMargin: 0
            }

            Edit_Line {
                id: edit_im
                width: 200
                anchors.left: lab_im.right
                anchors.leftMargin: 10
                text: "" // qsTr("имя")
            }
        }

        Item {
            id: row_odr
            height: 20
            anchors.top: row_im.bottom
            anchors.topMargin: 10
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.leftMargin: 0

            Text_Label {
                id: lab_ot
                width: 110
                height: 20
                text: qsTr("Отчество")
                anchors.left: parent.left
                anchors.leftMargin: 0
            }

            Edit_Line {
                id: edit_ot
                width: 200
                height: 20
                text: "" // qsTr("отчество")
                anchors.left: lab_ot.right
                anchors.leftMargin: 10
                inputMask: ""
            }

            Text_Label {
                id: lab_dr
                height: 20
                text: qsTr("дата рожд.")
                anchors.left: edit_ot.right
                anchors.leftMargin: 20
            }

            Btn_Calendar {
                id: edit_dr_date
                head_text: "дата рожд. водителя"
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: lab_dr.right
                anchors.leftMargin: 5
            }
        }

        Item {
            id: row_mr
            height: 25
            anchors.top: row_odr.bottom
            anchors.topMargin: 10
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: -1

            Text_Label {
                id: lab_mr
                width: 110
                height: 20
                text: qsTr("Место рождения")
            }

            Edit_Line {
                id: edit_mr
                anchors.leftMargin: 10
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.left: lab_mr.right
                text: "" // qsTr("место рождения")
            }
        }

        Item {
            id: row_citizenship
            height: 35
            anchors.top: row_mr.bottom
            anchors.topMargin: 10
            anchors.leftMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left

            Text_Label {
                id: lab_citizenship
                width: 110
                height: 20
                text: qsTr("Гражданство")
                anchors.top: parent.top
                anchors.topMargin: 10
            }

            Edit_Code {
                id: edit_citizenship_code
                y: 0
                width: 70
                height: 30
                radius: 4
                anchors.verticalCenterOffset: 0
                anchors.left: lab_citizenship.right
                anchors.leftMargin: 10
                inputMask: "9999"
                text: combo_citizenship.currentText
            }

            Combo_Tab54 {
                id: combo_citizenship
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.left: edit_citizenship_code.right
                anchors.leftMargin: 10
                currentIndex: 0
            }
        }

        Item {
            id: row_VU
            height: 35
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            anchors.right: parent.right
            anchors.top: row_citizenship.bottom
            anchors.topMargin: 10
            anchors.left: parent.left

            Text_LabBold {
                id: lab_VU
                width: 210
                height: 20
                text: qsTr("Документ удостоверяющий\nличность, ВУ:")
                anchors.top: parent.top
                anchors.topMargin: 10
                font.bold: true
                anchors.leftMargin: 0
                anchors.left: parent.left
            }

            Text_Label {
                id: lab_VU_type
                height: 20
                text: qsTr("вид")
                anchors.top: parent.top
                anchors.topMargin: 10
                anchors.leftMargin: 10
                anchors.left: lab_VU.right
            }

            Edit_Code {
                id: edit_VU_type_code
                y: 0
                width: 50
                height: 30
                anchors.verticalCenterOffset: 0
                anchors.left: lab_VU_type.right
                anchors.leftMargin: 10
                inputMask: "99"
                text: combo_VU_type.currentText
            }

            Combo_Tab14 {
                id: combo_VU_type
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.left: edit_VU_type_code.right
                anchors.leftMargin: 10
                currentIndex: 0
            }
        }

        Item {
            id: row_VU1
            height: 25
            anchors.top: row_VU.bottom
            anchors.topMargin: 10
            anchors.right: parent.right
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            anchors.left: parent.left

            Text_LabBold {
                id: lab_VU1
                width: 210
                height: 20
                text: qsTr("Документ удостоверяющий\nличность, ВУ:")
                visible: false
                anchors.leftMargin: 0
                font.bold: true
                anchors.left: parent.left
            }

            Text_Label {
                id: lab_VU_sernum2
                height: 20
                text: qsTr("серия/номер")
                anchors.leftMargin: 10
                anchors.left: lab_VU1.right
            }

            Edit_Line {
                id: edit_VU_sernum2
                width: 130
                height: 20
                radius: 1
                anchors.leftMargin: 10
                anchors.left: lab_VU_sernum2.right
                text: "" // qsTr("серия и номер")
            }
        }

        Item {
            id: row_VVU
            width: 5
            height: 20
            anchors.top: row_VU1.bottom
            anchors.topMargin: 10
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0

            Text_LabBold {
                id: lab_VVU
                width: 210
                height: 20
                text: qsTr("Временное ВУ:")
                anchors.leftMargin: 0
                anchors.left: parent.left
            }

            Text_Label {
                id: lab_VVU_sernum
                height: 20
                text: qsTr("серия/номер")
                anchors.leftMargin: 10
                anchors.left: lab_VVU.right
            }

            Edit_Line {
                id: edit_VVU_sernum
                width: 130
                height: 20
                radius: 1
                anchors.leftMargin: 10
                anchors.left: lab_VVU_sernum.right
                text: "" // qsTr("серия и номер")
            }

            Text_Label {
                id: lab_VVU_date
                height: 20
                text: qsTr("срок действия")
                anchors.leftMargin: 10
                anchors.left: edit_VVU_sernum.right
            }

            Btn_Calendar {
                id: edit_VVU_date
                head_text: "срок действия ВВУ"
                anchors.verticalCenter: parent.verticalCenter
                anchors.leftMargin: 10
                anchors.left: lab_VVU_date.right
            }
        }
    }
}
