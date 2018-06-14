import QtQuick 2.5
import QtQuick.Controls 1.4

Rectangle {
    id: rect
    width: 800
    height: 500

    property string head_text: "Адрес места проживания (регистрации юридического лица) нарушителя"

    Image {
        id: image
        width: 800
        height: 600
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
        anchors.rightMargin: 20
        anchors.leftMargin: 20
        spacing: 30

        /*Text_Head {
            id: lab_address
            width: 500
            height: 25
            text: qsTr("Адрес места проживания (регистрации юридического лица) нарушителя")
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.top: parent.top
            anchors.topMargin: 0
        }*/

        Item {
            id: row_country
            height: 35
            anchors.leftMargin: 0
            anchors.right: parent.right
            anchors.top: lab_address.bottom
            anchors.rightMargin: 0
            anchors.topMargin: 10
            anchors.left: parent.left

            Text_Label {
                id: lab_country
                width: 100
                height: 20
                text: qsTr("Страна")
                anchors.top: parent.top
                anchors.topMargin: 10
            }

            Edit_Code {
                id: edit_country_code
                width: 70
                height: 30
                anchors.verticalCenterOffset: 0
                anchors.left: lab_country.right
                anchors.leftMargin: 10
                inputMask: "9999"
                text: combo_country.currentText
            }

            Combo_Tab54 {
                id: combo_country
                currentIndex: 148
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.left: edit_country_code.right
                anchors.leftMargin: 10
            }
        }

        Item {
            id: row_terr
            height: 35
            anchors.leftMargin: 0
            anchors.right: parent.right
            anchors.top: row_country.bottom
            anchors.rightMargin: 0
            anchors.topMargin: 5
            anchors.left: parent.left
            visible: (edit_country_code.text_masked === "4404")

            Text_Label {
                id: lab_terr
                width: 100
                height: 20
                text: qsTr("Регион")
                anchors.top: parent.top
                anchors.topMargin: 10
            }

            Edit_Code {
                id: edit_terr_code
                width: 70
                height: 30
                anchors.verticalCenterOffset: 0
                anchors.left: lab_terr.right
                anchors.leftMargin: 10
                inputMask: "9999"
                text: combo_terr.currentText
            }

            Combo_Tab08 {
                id: combo_terr
                currentIndex: 0
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.left: edit_terr_code.right
                anchors.leftMargin: 10
            }
        }

        Item {
            id: row_dstr
            height: 20
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.top: row_terr.bottom
            anchors.topMargin: 10

            // visible: (edit_country_code.text_masked=="4404")
            Text_Label {
                id: lab_dstr
                width: 100
                height: 20
                text: qsTr("Район")
                anchors.left: parent.left
                anchors.leftMargin: 0
            }

            Edit_Line {
                id: edit_dstr_code
                width: 40
                height: 20
                anchors.left: lab_dstr.right
                anchors.leftMargin: 10
                text: ""
                inputMask: "xxx" // qsTr("123")
            }

            Edit_Line {
                id: edit_dstr
                height: 20
                anchors.left: edit_dstr_code.right
                anchors.leftMargin: 10
                text: "" // qsTr("район")
                anchors.right: lab_kladr.left
                anchors.rightMargin: 10
            }

            Text_Label {
                id: lab_kladr
                height: 20
                text: qsTr("код КЛАДР")
                visible: false
                anchors.right: edit_kladr.left
                anchors.rightMargin: 10
            }

            Edit_Line {
                id: edit_kladr
                width: 160
                height: 20
                anchors.right: parent.right
                anchors.rightMargin: 0
                text: ""
                visible: false // qsTr("12345678901234567890")
                inputMask: ""
            }
        }

        Item {
            id: row_nasp
            height: 20
            anchors.leftMargin: 0
            anchors.right: parent.right
            anchors.top: row_dstr.bottom
            anchors.rightMargin: 0
            anchors.topMargin: 10
            anchors.left: parent.left

            // visible: (edit_country_code.text_masked=="4404")
            Text_Label {
                id: lab_nasp
                width: 100
                height: 20
                text: qsTr("Насел. пункт")
                anchors.left: parent.left
                anchors.leftMargin: 0
            }

            Edit_Line {
                id: edit_nasp
                width: 300
                height: 20
                anchors.left: lab_nasp.right
                anchors.leftMargin: 10
                text: "" // qsTr("населённый пункт")
                anchors.right: lab_index.left
                anchors.rightMargin: 10
            }

            Text_Label {
                id: lab_index
                height: 20
                text: qsTr("почтовый индекс")
                anchors.right: edit_index.left
                anchors.rightMargin: 10
            }

            Edit_Nums {
                id: edit_index
                width: 60
                height: 20
                anchors.right: parent.right
                anchors.rightMargin: 0
                // qsTr("123456")
                inputMask: "999999"
            }
        }

        Item {
            id: row_hous
            height: 20
            anchors.leftMargin: 0
            anchors.right: parent.right
            anchors.top: row_nasp.bottom
            anchors.rightMargin: 0
            anchors.topMargin: 10
            anchors.left: parent.left

            //  visible: (edit_country_code.text_masked=="4404")
            Text_Label {
                id: lab_hous
                width: 100
                height: 20
                text: qsTr("Дом")
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: 0
            }

            Edit_Line {
                id: edit_hous
                width: 90
                height: 20
                text: ""
                anchors.left: lab_hous.right
                anchors.leftMargin: 10 // qsTr("1234567890")
                inputMask: ""
            }

            Text_Label {
                id: lab_corp
                height: 20
                text: qsTr("корпус")
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: edit_hous.right
                anchors.leftMargin: 20
            }

            Edit_Line {
                id: edit_corp
                width: 55
                height: 20
                text: ""
                anchors.left: lab_corp.right
                anchors.leftMargin: 10 // qsTr("АБВГД")
                inputMask: ""
            }

            Text_Label {
                id: lab_qurt
                height: 20
                text: qsTr("квартира")
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: edit_corp.right
                anchors.leftMargin: 20
            }

            Edit_Line {
                id: edit_qurt
                width: 70
                height: 20
                text: ""
                anchors.left: lab_qurt.right
                anchors.leftMargin: 10 // qsTr("1234567")
                inputMask: ""
            }
        }

        Text_Head2 {
            id: lab_phones
            width: 500
            height: 20
            text: qsTr("Контактная инфрмация нарушителя")
            anchors.leftMargin: 0
            anchors.right: parent.right
            anchors.top: row_hous.bottom
            anchors.rightMargin: 0
            anchors.topMargin: 30
            anchors.left: parent.left
        }

        Item {
            id: row_terr1
            height: 20
            anchors.leftMargin: 0
            anchors.right: parent.right
            anchors.top: lab_phones.bottom
            anchors.rightMargin: 0
            anchors.topMargin: 5
            anchors.left: parent.left

            Text_Label {
                id: lab_phone
                width: 230
                height: 20
                text: qsTr("Контактный телефон нарушителя")
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: 0
            }

            Edit_Line {
                id: rect_phone
                width: 150
                height: 20
                text: "" // qsTr("1234567890123456")
                anchors.left: lab_phone.right
                anchors.leftMargin: 10
                inputMask: ""
            }
        }

        Item {
            id: row_terr2
            height: 20
            anchors.leftMargin: 0
            anchors.right: parent.right
            anchors.top: row_terr1.bottom
            anchors.rightMargin: 0
            anchors.topMargin: 10
            anchors.left: parent.left

            Text_Label {
                id: lab_work_place
                width: 230
                height: 20
                text: qsTr("Место работы нарушителя")
            }

            Edit_Line {
                id: edit_work_place
                height: 20
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.left: lab_work_place.right
                anchors.leftMargin: 10
                text: "" // qsTr("место работы нарушителя")
            }
        }
    }
}
