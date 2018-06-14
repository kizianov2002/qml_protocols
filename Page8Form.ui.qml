import QtQuick 2.5
import QtQuick.Controls 1.4


Rectangle {
    id: rect
    width: 700
    height: 500

    property string head_text: "Данные об административном наказании"

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
            id: lab_punishment
            width: 500
            height: 25
            text: qsTr("Данные об административном наказании")
            font.pixelSize: 25
            anchors.leftMargin: 0
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.rightMargin: 0
            anchors.topMargin: 0
            anchors.left: parent.left
        }*/

        Rectangle {
            id: row_punishment
            height: 35
            color: "#00000000"
            anchors.top: lab_punishment.bottom
            anchors.right: parent.right
            anchors.leftMargin: 0
            anchors.topMargin: 10
            anchors.rightMargin: 0
            anchors.left: parent.left

            Text_Label {
                id: lab_punishment_type
                width: 160
                height: 35
                text: qsTr("Вид административного\nнаказания")
                anchors.top: parent.top
                anchors.topMargin: 0
                anchors.leftMargin: 0
                anchors.left: parent.left
            }

            Edit_Code {
                id: edit_punishment_type_code
                y: 0
                width: 50
                height: 30
                anchors.verticalCenterOffset: 0
                anchors.left: lab_punishment_type.right
                anchors.leftMargin: 10
                inputMask: "9"
                text: combo_punishment_type.currentText
            }

            Combo_Tab65 {
                id: combo_punishment_type
                currentIndex: 0
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.left: edit_punishment_type_code.right
                anchors.leftMargin: 10
            }
        }

        Rectangle {
            id: row_mulch
            height: 35
            color: "#00000000"
            anchors.top: row_punishment.bottom
            anchors.topMargin: 5
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            anchors.right: parent.right

            Check_Key {
                id: ch_mulch
                width: 170
                height: 35
                text: qsTr("Штраф")
                anchors.left: parent.left
                anchors.leftMargin: 50
            }

            Edit_Money {
                id: edit_mulch
                width: 130
                height: 20
                anchors.left: ch_mulch.right
                anchors.leftMargin: 10
                anchors.verticalCenter: parent.verticalCenter
                visible: ch_mulch.checked
            }

            Text_Label {
                id: lab_mulch_note
                text: qsTr("размер штрафа")
                anchors.left: edit_mulch.right
                anchors.verticalCenter: parent.verticalCenter
                anchors.leftMargin: 10
                visible: ch_mulch.checked
            }
        }

        Rectangle {
            id: row_disqualification
            height: 35
            color: "#00000000"
            anchors.top: row_mulch.bottom
            anchors.topMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            anchors.right: parent.right

            Check_Key {
                id: ch_disqualification
                width: 170
                height: 35
                text: qsTr("Лишение прав")
                anchors.left: parent.left
                anchors.leftMargin: 50
            }

            Edit_Nums {
                id: edit_disqualification
                width: 60
                height: 20
                anchors.left: ch_disqualification.right
                anchors.verticalCenter: parent.verticalCenter
                anchors.leftMargin: 10
                visible: ch_disqualification.checked
                text: "0"
                inputMask: "00009"
            }

            Text_Label {
                id: lab_disqualification_note
                text: qsTr("(срок административного ареста в сутках)")
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: edit_disqualification.right
                anchors.leftMargin: 10
                visible: ch_disqualification.checked
            }
        }

        Rectangle {
            id: row_admin_arrest
            height: 35
            color: "#00000000"
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.topMargin: 0
            anchors.rightMargin: 0
            anchors.right: parent.right
            anchors.top: row_disqualification.bottom

            Check_Key {
                id: ch_admin_arrest
                width: 170
                height: 35
                text: qsTr("Административный\n арест")
                anchors.left: parent.left
                anchors.leftMargin: 50
            }

            Edit_Nums {
                id: edit_admin_arrest
                width: 60
                height: 20
                anchors.left: ch_admin_arrest.right
                anchors.verticalCenter: parent.verticalCenter
                anchors.leftMargin: 10
                visible: ch_admin_arrest.checked
                text: "0"
                inputMask: "000009"
            }

            Text_Label {
                id: lab_admin_arrest_note
                text: qsTr("(срок лишения права управления в месяцах)")
                anchors.left: edit_admin_arrest.right
                anchors.verticalCenter: edit_admin_arrest.verticalCenter
                anchors.leftMargin: 10
                visible: ch_admin_arrest.checked
            }
        }

        Rectangle {
            id: row_compulsory_work
            height: 35
            color: "#00000000"
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.topMargin: 0
            anchors.rightMargin: 0
            anchors.right: parent.right
            anchors.top: row_admin_arrest.bottom

            Check_Key {
                id: ch_compulsory_work
                width: 170
                height: 35
                text: qsTr("Обязательные\n работы")
                anchors.left: parent.left
                anchors.leftMargin: 50
            }

            Edit_Nums {
                id: edit_compulsory_work
                width: 60
                height: 20
                anchors.left: ch_compulsory_work.right
                anchors.verticalCenter: parent.verticalCenter
                anchors.leftMargin: 10
                visible: ch_compulsory_work.checked
                text: "0"
                inputMask: "000009"
            }

            Text_Label {
                id: lab_compulsory_work_note
                text: qsTr("(срок обязательных работ в часах)")
                anchors.verticalCenterOffset: 0
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: edit_compulsory_work.right
                anchors.leftMargin: 10
                visible: ch_compulsory_work.checked
            }
        }

        Rectangle {
            id: row_termination_basis
            height: 35
            color: "#00000000"
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.topMargin: 20
            anchors.rightMargin: 0
            anchors.right: parent.right
            anchors.top: row_compulsory_work.bottom

            Check_Key {
                id: ch_termination_basis
                width: 230
                height: 35
                text: qsTr("Основание прекращения\n производства по делу")
                anchors.left: parent.left
                anchors.leftMargin: 0
            }

            Edit_Text {
                id: rect_termination_basis
                height: 35
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.verticalCenter: ch_termination_basis.verticalCenter
                anchors.left: ch_termination_basis.right
                anchors.leftMargin: 0
                visible: ch_termination_basis.checked
                text: ""   // qsTr("Text Edit")
            }
        }

        Rectangle {
            id: row_date_into_forse
            height: 35
            color: "#00000000"
            anchors.right: parent.right
            anchors.topMargin: 0
            anchors.rightMargin: 0
            anchors.top: row_termination_basis.bottom
            anchors.left: parent.left
            anchors.leftMargin: 0

            Check_Key {
                id: ch_date_into_forse
                width: 230
                height: 35
                text: qsTr("Дата вступления постанов-\n ления в законную силу")
                anchors.top: parent.top
                anchors.topMargin: 0
                anchors.left: parent.left
                anchors.leftMargin: 0
            }

            Btn_Calendar {
                id: edit_date_into_forse
                head_text: "Дата вступления в законную силу"
                anchors.verticalCenter: ch_date_into_forse.verticalCenter
                anchors.left: ch_date_into_forse.right
                visible: ch_date_into_forse.checked
                anchors.leftMargin: 0
            }
        }

        Text_Head2 {
            id: lab_execution
            width: 500
            height: 20
            text: qsTr("Исполнение постановления")
            anchors.leftMargin: 0
            anchors.right: parent.right
            anchors.top: row_date_into_forse.bottom
            anchors.rightMargin: 0
            anchors.topMargin: 20
            anchors.left: parent.left
        }

        Rectangle {
            id: row_execution_status
            height: 35
            color: "#00000000"
            anchors.top: lab_execution.bottom
            anchors.right: parent.right
            anchors.leftMargin: 0
            anchors.topMargin: 5
            anchors.rightMargin: 0
            anchors.left: parent.left

            Text_Label {
                id: lab_execution_status
                width: 160
                height: 35
                text: qsTr("Состояние исполнения\nпостановления")
                anchors.top: parent.top
                anchors.topMargin: 0
                anchors.leftMargin: 0
                anchors.left: parent.left
            }

            Edit_Code {
                id: edit_execution_status_code
                y: 0
                width: 50
                height: 30
                anchors.verticalCenterOffset: 0
                anchors.left: lab_execution_status.right
                anchors.leftMargin: 10
                inputMask: "9"
                text: combo_execution_status.currentText
            }

            Combo_Tab66 {
                id: combo_execution_status
                currentIndex: 0
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.left: edit_execution_status_code.right
                anchors.leftMargin: 10
            }
        }
    }

}
