import QtQuick 2.5
import QtQuick.Controls 1.4


Rectangle {
    id: rect
    width: 700
    height: 500

    property string head_text: "Первичный материал"

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
            text: qsTr("Первичный материал")
            anchors.leftMargin: 0
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.rightMargin: 0
            anchors.topMargin: 0
            anchors.left: parent.left
        }*/

        Item {
            id: row_n_ap
            height: 20
            visible: false
            anchors.top: lab_protocol.bottom
            anchors.topMargin: 10
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0

            Text_Label {
                id: lab_n_ap
                width: 180
                text: qsTr("Уникальный номер АП")
                anchors.left: parent.left
                anchors.leftMargin: 0
            }

            Edit_Line {
                id: edit_n_ap
                width: 200
                height: 20
                anchors.left: lab_n_ap.right
                anchors.leftMargin: 10
                text: "" // qsTr("1234567890123456789012345")
            }
        }

        Item {
            id: row_ap
            height: 35
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.top: lab_protocol.bottom
            anchors.topMargin: 10

            Text_Label {
                id: lab_ap
                width: 180
                height: 20
                text: qsTr("Первичный материал:")
                anchors.top: parent.top
                anchors.topMargin: 10
                anchors.left: parent.left
                anchors.leftMargin: 0
            }

            Text_Label {
                id: lab_ap_type
                height: 20
                text: qsTr("тип")
                anchors.top: parent.top
                anchors.topMargin: 10
                anchors.left: lab_ap.right
                anchors.leftMargin: 10
            }

            Edit_Code {
                id: edit_ap_type
                y: 0
                width: 50
                height: 30
                anchors.verticalCenterOffset: 0
                anchors.left: lab_ap_type.right
                anchors.leftMargin: 10
                inputMask: "99"
                text: combo_ap_type.currentText
            }

            Combo_Tab14 {
                id: combo_ap_type
                currentIndex: 52
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.left: edit_ap_type.right
                anchors.leftMargin: 10
            }
        }

        Item {
            id: row_ap1
            height: 20
            anchors.rightMargin: 0
            anchors.right: parent.right
            anchors.left: parent.left
            anchors.top: row_ap.bottom
            anchors.leftMargin: 0
            anchors.topMargin: 5

            Text_Label {
                id: lab_ap1
                width: 180
                height: 20
                text: qsTr("Првичный материал:")
                visible: false
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: 0
            }

            Text_Label {
                id: lab_ruling_sernum1
                height: 20
                text: qsTr("серия/номер")
                anchors.left: lab_ap1.right
                anchors.leftMargin: 10
                anchors.verticalCenter: parent.verticalCenter
            }

            Edit_Line {
                id: edit_ar_sernum1
                width: 140
                height: 20
                anchors.left: lab_ruling_sernum1.right
                anchors.leftMargin: 10
                text: "" // qsTr("серия и номер")
                inputMask: ""
            }

            Text_Label {
                id: lab_ap_date1
                height: 20
                text: qsTr("дата составления")
                anchors.left: edit_ar_sernum1.right
                anchors.leftMargin: 10
            }

            Btn_Calendar {
                id: edit_ap_date1
                head_text: "дата составления первич. материала"
                anchors.verticalCenter: parent.verticalCenter
                anchors.leftMargin: 10
                anchors.left: lab_ap_date1.right
            }

            /*Edit_Date {
                id: edit_ap_date1
                height: 20
                anchors.left: lab_ap_date1.right
                anchors.leftMargin: 10
            }*/
        }

        Item {
            id: row_place
            height: 25
            anchors.leftMargin: 0
            anchors.right: parent.right
            anchors.top: row_ap1.bottom
            anchors.rightMargin: -1
            anchors.topMargin: 10
            anchors.left: parent.left

            Text_Label {
                id: lab_ap_place
                width: 180
                height: 20
                text: qsTr("Место составления")
            }

            Edit_Line {
                id: edit_ap_place
                height: 20
                anchors.leftMargin: 10
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.left: lab_ap_place.right
                text: "" // qsTr("место составления")
            }
        }

        Item {
            id: row_ruling
            height: 20
            anchors.topMargin: 10
            anchors.leftMargin: 0
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.top: row_place.bottom

            Text_Label {
                id: lab_ruling_sernumdate
                width: 180
                height: 20
                text: qsTr("Постановление..:")
                anchors.verticalCenter: parent.verticalCenter
                anchors.leftMargin: 0
                anchors.left: parent.left
            }

            Text_Label {
                id: lab_ruling_sernum
                height: 20
                text: qsTr("серия/номер")
                anchors.verticalCenter: parent.verticalCenter
                anchors.top: parent.top
                anchors.topMargin: 0
                anchors.leftMargin: 10
                anchors.left: lab_ruling_sernumdate.right
            }

            Edit_Line {
                id: edit_ruling_sernum
                width: 140
                height: 20
                anchors.leftMargin: 10
                anchors.left: lab_ruling_sernum.right
                text: ""  // "1234567890123456789012345"
            }

            Text_Label {
                id: lab_ruling_date
                width: 114
                height: 20
                text: qsTr("дата вынесения")
                anchors.verticalCenter: parent.verticalCenter
                anchors.leftMargin: 10
                anchors.left: edit_ruling_sernum.right
            }

            Btn_Calendar {
                id: edit_ruling_date
                head_text: "дата составления постановления"
                anchors.verticalCenter: parent.verticalCenter
                anchors.leftMargin: 10
                anchors.left: lab_ruling_date.right
            }

            /*Edit_Date {
                id: edit_ruling_date
                width: 100
                height: 20
                anchors.verticalCenter: parent.verticalCenter
                anchors.leftMargin: 10
                anchors.left: lab_ruling_date.right
            }*/
        }

        Item {
            id: row_offence
            height: 20
            z: 1
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            anchors.right: parent.right
            anchors.top: row_ruling.bottom
            anchors.topMargin: 10
            anchors.left: parent.left

            Text_Label {
                id: lab_offence
                width: 180
                height: 20
                text: qsTr("Дата/время нарушения:")
                anchors.leftMargin: 0
                anchors.left: parent.left
            }

            Btn_Calendar {
                id: edit_offence_date
                head_text: "дата нарушения"
                anchors.verticalCenter: parent.verticalCenter
                anchors.leftMargin: 10
                anchors.left: lab_offence.right
            }

            /*Edit_Date {
                id: edit_offence_date
                width: 100
                height: 20
                anchors.leftMargin: 10
                anchors.left: lab_offence.right
            }*/

            /*Btn_TimePick {
                id: edit_offence_time
                width: 90
                height: 20
                anchors.leftMargin: 10
                anchors.left: edit_offence_date.right
                text: qsTr("000000")
            }*/

            Btn_TimePick {
                id: edit_offence_time
                width: 90
                height: 20
                z: 1
                anchors.leftMargin: 10
                anchors.left: edit_offence_date.right
            }
        }

        Item {
            id: row_off_place
            height: 20
            anchors.leftMargin: 0
            anchors.right: parent.right
            anchors.top: row_offence.bottom
            anchors.rightMargin: 0
            anchors.topMargin: 5
            anchors.left: parent.left

            Text_Label {
                id: lab_off_place
                width: 180
                height: 20
                text: qsTr("ОКАТО / место нарушения")
            }

            Edit_Nums {
                id: edit_off_ocato
                width: 60
                height: 20
                anchors.leftMargin: 10
                anchors.left: lab_off_place.right
                text: ""
                inputMask: "00000009" // qsTr("123456")
            }

            Edit_Line {
                id: edit_off_place
                height: 20
                anchors.left: edit_off_ocato.right
                anchors.leftMargin: 10
                anchors.right: parent.right
                anchors.rightMargin: 0
                text: "" // qsTr("место нарушения")
            }
        }

        Item {
            id: row_off_coords
            height: 20
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            anchors.right: parent.right
            anchors.top: row_off_place.bottom
            anchors.topMargin: 10
            anchors.left: parent.left

            Text_Label {
                id: lab_off_coords
                width: 350
                height: 20
                text: qsTr("Координаты места административного нарушения :")
                anchors.leftMargin: 0
                anchors.left: parent.left
            }

            Text_Label {
                id: lab_off_latitude
                height: 20
                text: qsTr("широта")
                anchors.leftMargin: 10
                anchors.left: lab_off_coords.right
            }

            Edit_Nums {
                id: edit_off_latitude
                width: 80
                height: 20
                anchors.leftMargin: 10
                anchors.left: lab_off_latitude.right
                text: "" // qsTr("12345678")
                inputMask: "00000009"
            }

            Text_Label {
                id: lab_off_longitude
                height: 20
                text: qsTr("долгота")
                anchors.leftMargin: 10
                anchors.left: edit_off_latitude.right
            }

            Edit_Nums {
                id: edit_off_longitude
                width: 85
                height: 20
                anchors.leftMargin: 10
                anchors.left: lab_off_longitude.right
                text: "" // qsTr("123456789")
                inputMask: "0000000009"
            }
        }
    }
}
