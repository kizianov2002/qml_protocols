import QtQuick 2.5
import QtQuick.Controls 1.4

Rectangle {
    id: rect
    width: 700
    height: 500

    property string head_text: "Данные о правонарушении"

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
            text: qsTr("Данные о правонарушении")
            font.pixelSize: 25
            anchors.leftMargin: 0
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.rightMargin: 0
            anchors.topMargin: 0
            anchors.left: parent.left
        }*/

        Item {
            id: row_adm_offence_subj
            height: 35
            anchors.top: lab_protocol.bottom
            anchors.right: parent.right
            anchors.topMargin: 10
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.rightMargin: 0

            Text_Label {
                id: lab_adm_offence_subj
                width: 180
                height: 20
                text: qsTr("Код субъекта\nправонарушения")
                anchors.top: parent.top
                anchors.topMargin: 10
                anchors.left: parent.left
                anchors.leftMargin: 0
            }

            Edit_Code {
                id: edit_adm_offence_subj_code
                y: 0
                width: 50
                height: 30
                radius: 3
                anchors.verticalCenterOffset: 0
                anchors.left: lab_adm_offence_subj.right
                anchors.leftMargin: 10
                inputMask: "9"
                text: combo_adm_offence_subj.currentText
            }

            Combo_Tab62 {
                id: combo_adm_offence_subj
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 0
                anchors.top: parent.top
                anchors.topMargin: 0
                currentIndex: 0
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.left: edit_adm_offence_subj_code.right
                anchors.leftMargin: 10
            }
        }

        Item {
            id: row_koap_article
            height: 60
            anchors.top: row_adm_offence_subj.bottom
            anchors.right: parent.right
            anchors.leftMargin: 0
            anchors.topMargin: 10
            anchors.rightMargin: 0
            anchors.left: parent.left

            Text_Label {
                id: lab_koap_article
                width: 180
                text: qsTr("Статья КоАП и состав\nправонарушения,\nпо которой предусмотрена\nответственность")
                anchors.leftMargin: 0
                anchors.left: parent.left
            }

            Edit_Text {
                id: edit_koap_article
                height: 60
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.leftMargin: 10
                anchors.left: lab_koap_article.right
                text: "" // qsTr("Text Edit")
            }
        }

        Item {
            id: row_subdivision
            height: 25
            anchors.right: parent.right
            anchors.top: row_koap_article.bottom
            anchors.leftMargin: 0
            anchors.rightMargin: -1
            anchors.topMargin: 10
            anchors.left: parent.left

            Text_Label {
                id: lab_subdivision
                width: 180
                height: 20
                text: qsTr("Код подразделения,\nвыявившего нарушение")
            }

            Edit_Line {
                id: edit_subdivision
                width: 70
                height: 20
                anchors.leftMargin: 10
                anchors.left: lab_subdivision.right
                text: "" // qsTr("1234567")
            }

            Text_Label {
                id: lab_officer
                width: 160
                height: 20
                text: qsTr("Код должностного лица,\nвыявившего нарушение")
                anchors.left: edit_subdivision.right
                anchors.leftMargin: 10
            }

            Edit_Line {
                id: rect_officer
                width: 50
                height: 20
                text: "" // qsTr("1234")
                anchors.left: lab_officer.right
                anchors.leftMargin: 10
            }
        }
    }
}
