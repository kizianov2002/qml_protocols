import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4


Rectangle {
    id: rect
    width: 900
    height: 500

    property string head_text: "Данные о владельце"

    Image {
        id: image
        width: 800
        height: 800
        anchors.fill: parent
        source: "base.jpg"
    }

    /*Text_Head {
        id: lab_owner
        x: 20
        y: 20
        width: 500
        height: 25
        text: qsTr("Данные о владельце")
        anchors.top: parent.top
        anchors.topMargin: 20
        anchors.left: parent.left
        anchors.leftMargin: 20
        anchors.right: parent.right
        anchors.rightMargin: 20
    }*/

    Item {
        id: row_rb
        height: 35
        anchors.right: parent.right
        anchors.leftMargin: 20
        anchors.rightMargin: 20
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.topMargin: 5

        Text_Label {
            id: lab_fizurr
            width: 250
            text: qsTr("Категория владельца автомобиля")
            anchors.leftMargin: 0
            anchors.left: parent.left
            anchors.verticalCenter: parent.verticalCenter
        }

        Edit_Code {
            id: edit_fizurr_code
            y: 0
            width: 50
            height: 30
            anchors.verticalCenterOffset: 0
            anchors.left: lab_fizurr.right
            anchors.leftMargin: 10
            inputMask: "9"
            text: combo_fiz_VU_type.currentIndex
            visible: false
        }

        Combo_FizUrr {
            id: combo_fizurr
            currentIndex: 0
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: lab_fizurr.right
            anchors.leftMargin: 10
        }
    }

    Column {
        id: col_fizic
        visible: (combo_fizurr.currentIndex === 0)
        anchors.bottom: rect_DN.top
        anchors.bottomMargin: 0
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.top: row_rb.bottom
        spacing: 30
        anchors.rightMargin: 20
        anchors.leftMargin: 20
        anchors.topMargin: 10

        Item {
            id: row_fiz_fam
            height: 20
            anchors.top: parent.top
            anchors.topMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0

            Text_Label {
                id: lab_fiz_fam
                width: 110
                text: qsTr("Фамилия")
                anchors.left: parent.left
                anchors.leftMargin: 0
            }

            Edit_Line {
                id: edit_fiz_fam
                width: 200
                anchors.left: lab_fiz_fam.right
                anchors.leftMargin: 10
                text: "" // qsTr("фамилия")
            }
        }

        Item {
            id: row_fiz_im
            height: 20
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.top: row_fiz_fam.bottom
            anchors.topMargin: 5

            Text_Label {
                id: lab_fiz_im
                width: 110
                height: 20
                text: qsTr("Имя")
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: 0
            }

            Edit_Line {
                id: edit_fiz_im
                width: 200
                anchors.left: lab_fiz_im.right
                anchors.leftMargin: 10
                text: "" // qsTr("имя")
            }
        }

        Item {
            id: row_fiz_odr
            height: 20
            anchors.topMargin: 5
            anchors.rightMargin: 0
            anchors.top: row_fiz_im.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.leftMargin: 0

            Text_Label {
                id: lab_fiz_ot
                width: 110
                height: 20
                text: qsTr("Отчество")
                anchors.left: parent.left
                anchors.leftMargin: 0
            }

            Edit_Line {
                id: edit_fiz_ot
                width: 200
                height: 20
                text: "" // qsTr("отчество")
                anchors.left: lab_fiz_ot.right
                anchors.leftMargin: 10
                inputMask: ""
            }

            Text_Label {
                id: lab_fiz_dr
                height: 20
                text: qsTr("дата рожд.")
                anchors.left: edit_fiz_ot.right
                anchors.leftMargin: 20
            }

            Btn_Calendar {
                id: edit_fiz_dr_date
                head_text: "дата рожд. владельца"
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: lab_fiz_dr.right
                anchors.leftMargin: 5
            }

            /*Edit_Date {
                id: rect_fiz_dr
                width: 100
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: lab_fiz_dr.right
                anchors.leftMargin: 5
            }*/
        }

        Item {
            id: row_fiz_mr
            height: 20
            anchors.topMargin: 10
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.right: parent.right
            anchors.top: row_fiz_odr.bottom
            anchors.rightMargin: -1

            Text_Label {
                id: lab_fiz_mr
                width: 110
                height: 20
                text: qsTr("Место рождения")
                anchors.left: parent.left
                anchors.leftMargin: 0
                anchors.verticalCenter: parent.verticalCenter
            }

            Edit_Line {
                id: edit_fiz_mr
                anchors.leftMargin: 10
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.left: lab_fiz_mr.right
                text: "" // qsTr("место рождения")
            }
        }

        Item {
            id: row_fiz_citizenship
            height: 35
            anchors.leftMargin: 0
            anchors.right: parent.right
            anchors.top: row_fiz_mr.bottom
            anchors.rightMargin: 0
            anchors.topMargin: 10
            anchors.left: parent.left

            Text_Label {
                id: lab_fiz_citizenship
                width: 110
                height: 20
                text: qsTr("Гражданство")
                anchors.verticalCenter: parent.verticalCenter
            }

            Edit_Code {
                id: edit_fiz_citizenship_code
                y: 0
                width: 70
                height: 30
                radius: 4
                anchors.verticalCenterOffset: 0
                anchors.left: lab_fiz_citizenship.right
                anchors.leftMargin: 10
                inputMask: "9999"
                text: combo_fiz_citizenship.currentText
            }

            Combo_Tab54 {
                id: combo_fiz_citizenship
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.left: edit_fiz_citizenship_code.right
                anchors.leftMargin: 10
                currentIndex: 0
            }
        }

        Item {
            id: row_fiz_INN
            width: 150
            height: 20
            anchors.topMargin: 10
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            anchors.left: parent.left
            anchors.top: row_fiz_citizenship.bottom

            Text_Label {
                id: lab_fiz_INN
                width: 110
                height: 20
                text: qsTr("ИНН")
                anchors.verticalCenter: parent.verticalCenter
                anchors.leftMargin: 0
                anchors.left: parent.left
            }

            Edit_Line {
                id: edit_fiz_INN
                width: 150
                height: 20
                text: ""
                anchors.leftMargin: 10
                inputMask: ""
                anchors.left: lab_fiz_INN.right
            }
            anchors.right: parent.right
        }

        Text_Head2 {
            id: lab_head_VU
            height: 20
            text: qsTr("Документ удостоверяющий личность, ВУ:")
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.top: row_fiz_INN.bottom
            anchors.topMargin: 20
            font.bold: true
            anchors.leftMargin: 0
            anchors.left: parent.left
        }

        Item {
            id: row_fiz_VU
            height: 35
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            anchors.right: parent.right
            anchors.top: lab_head_VU.bottom
            anchors.topMargin: 5
            anchors.left: parent.left

            Text_Label {
                id: lab_fiz_VU
                width: 110
                height: 20
                text: qsTr("вид")
                anchors.verticalCenter: parent.verticalCenter
                anchors.leftMargin: 0
                anchors.left: parent.left
            }

            Edit_Code {
                id: edit_fiz_VU_type_code
                y: 0
                width: 50
                height: 30
                anchors.verticalCenterOffset: 0
                anchors.left: lab_fiz_VU.right
                anchors.leftMargin: 10
                inputMask: "99"
                text: combo_fiz_VU_type.currentText
            }

            Combo_Tab14 {
                id: combo_fiz_VU_type
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: edit_fiz_VU_type_code.right
                anchors.leftMargin: 10
                currentIndex: 0
            }
        }

        Item {
            id: row_fiz_VU1
            height: 25
            anchors.top: row_fiz_VU.bottom
            anchors.right: parent.right
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            anchors.topMargin: 5
            anchors.left: parent.left

            Text_Label {
                id: lab_fiz_VU1_sernum
                width: 110
                height: 20
                text: qsTr("серия/номер")
                anchors.verticalCenter: parent.verticalCenter
                anchors.leftMargin: 0
                anchors.left: parent.left
            }

            Edit_Line {
                id: edit_fiz_VU1_sernum
                width: 150
                height: 20
                anchors.leftMargin: 10
                anchors.left: lab_fiz_VU1_sernum.right
                text: "" // qsTr("серия и номер")
            }
        }

    }

    Column {
        id: col_uric
        visible: (combo_fizurr.currentIndex === 1)
        anchors.bottom: rect_DN.top
        anchors.bottomMargin: 0
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.top: row_rb.bottom
        spacing: 30
        anchors.rightMargin: 20
        anchors.leftMargin: 20
        anchors.topMargin: 10

        Item {
            id: row_urr_name
            height: 30
            anchors.right: parent.right
            anchors.leftMargin: 0
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.topMargin: 0
            anchors.rightMargin: 0

            Text_Label {
                id: lab_urr_name
                width: 250
                text: qsTr("Наименование юридического лица")
                anchors.verticalCenter: parent.verticalCenter
                anchors.leftMargin: 0
                anchors.left: parent.left
            }

            Edit_Line {
                id: edit_urr_name
                text: ""
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.leftMargin: 10
                anchors.left: lab_urr_name.right
            }
        }

        Item {
            id: row_urr_OGRN
            width: 150
            height: 20
            anchors.right: parent.right
            anchors.leftMargin: 0
            anchors.top: row_urr_name.bottom
            anchors.left: parent.left
            anchors.topMargin: 5
            anchors.rightMargin: 0

            Text_Label {
                id: lab_urr_OGRN
                width: 250
                height: 20
                text: qsTr("ОГРН")
                anchors.leftMargin: 0
                anchors.left: parent.left
            }

            Edit_Line {
                id: edit_urr_OGRN
                width: 150
                radius: 1
                text: ""
                anchors.leftMargin: 10
                anchors.left: lab_urr_OGRN.right
            }
        }

        Item {
            id: row_urr_INN
            width: 150
            height: 20
            anchors.topMargin: 10
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            anchors.left: parent.left
            anchors.top: row_urr_OGRN.bottom

            Text_Label {
                id: lab_urr_INN
                width: 250
                height: 20
                text: qsTr("ИНН")
                anchors.verticalCenter: parent.verticalCenter
                anchors.leftMargin: 0
                anchors.left: parent.left
            }

            Edit_Line {
                id: edit_urr_INN
                width: 150
                height: 20
                radius: 1
                text: ""
                anchors.leftMargin: 10
                inputMask: ""
                anchors.left: lab_urr_INN.right
            }
            anchors.right: parent.right
        }
    }
}
