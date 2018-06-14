import QtQuick 2.5
import QtQuick.Controls 1.4


ApplicationWindow {
    id: wnd
    visible: true
    width: 500
    height: 250
    color: "#222222"
    title: qsTr("Авторизация пользователя")

    Image {
        id: image
        anchors.fill: parent
        source: "base.jpg"

        Column {
            id: column
            spacing: 20
            anchors.rightMargin: 50
            anchors.leftMargin: 50
            anchors.bottomMargin: 50
            anchors.topMargin: 50
            anchors.fill: parent

            Row {
                id: row_user
                height: 30
                spacing: 10
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.left: parent.left
                anchors.leftMargin: 0
                anchors.top: parent.top
                anchors.topMargin: 5

                Text_Head2 {
                    id: lab_user
                    width: 120
                    text: qsTr("оператор : ")
                    horizontalAlignment: Text.AlignRight
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                }

                Edit_User {
                    id: edit_user
                    width: 200
                    height: 30
                    anchors.left: lab_user.right
                    anchors.leftMargin: 10
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 0
                    anchors.top: parent.top
                    anchors.topMargin: 0
                }

            }

            Row {
                id: row_pass
                height: 30
                spacing: 10
                anchors.topMargin: 10
                anchors.leftMargin: 0
                anchors.rightMargin: 0
                anchors.right: parent.right
                anchors.left: parent.left
                anchors.top: row_user.bottom

                Text_Head2{
                    id: lab_pass
                    width: 120
                    text: qsTr("пароль : ")
                    horizontalAlignment: Text.AlignRight
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                }

                Edit_Pass {
                    id: edit_pass
                    width: 200
                    visible: true
                    anchors.left: lab_pass.right
                    anchors.leftMargin: 10
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 0
                    anchors.top: parent.top
                    anchors.topMargin: 0
                }
            }

            Row {
                id: row_push
                height: 35
                spacing: 10
                anchors.topMargin: 10
                anchors.leftMargin: 0
                anchors.rightMargin: 0
                anchors.right: parent.right
                anchors.left: parent.left
                anchors.top: row_pass.bottom

                Text_Head2{
                    id: lab_go
                    width: 120
                    text: qsTr("-> ")
                    horizontalAlignment: Text.AlignRight
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                }

                Button {
                    id: button
                    width: 100
                    height: 35
                    text: qsTr("Вход")
                    anchors.top: parent.top
                    anchors.topMargin: 0
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: lab_go.right
                    anchors.leftMargin: 10
                }
            }
        }

    }

}
