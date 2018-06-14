import QtQuick 2.5
import QtQuick.Controls 1.4

Rectangle {
    id: rect
    width: 700
    height: 500

    property string head_text: "Код правонарушения"

    Image {
        id: image
        width: 800
        height: 800
        anchors.fill: parent
        source: "base.jpg"
    }

    Column {
        id: column
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 55
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.topMargin: 5
        anchors.rightMargin: 20
        anchors.leftMargin: 20


        /*Text_Head {
            id: lab_protocol
            height: 25
            text: qsTr("Код правонарушения")
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0
        }*/
        Item {
            id: row_adm_offence
            height: 35
            anchors.top: lab_protocol.bottom
            anchors.topMargin: 10

            Text_Label {
                id: lab_adm_offence
                height: 20
                text: qsTr("Код административного правонарушения")
                anchors.verticalCenter: parent.verticalCenter

                anchors.leftMargin: 0
                anchors.left: parent.left
                anchors.verticalCenterOffset: 0
            }

            Edit_Code {
                id: edit_adm_offence_subj_code
                width: 60
                height: 30
                radius: 3
                inputMask: "999"
                text: combo_Tab35.currentCode

                anchors.left: lab_adm_offence.right
                anchors.leftMargin: 10
                anchors.verticalCenterOffset: 0
            }
        }

        Combo_Tab35 {
            id: combo_Tab35
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.top: row_adm_offence.bottom
            anchors.topMargin: 10
            anchors.left: parent.left
            anchors.leftMargin: 0

            currentIndex: 0
        }
    }
}
