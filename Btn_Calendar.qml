import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2
import QtQuick.Controls 1.4
import QtQuick.Controls 1.4 as Controls2
import QtQuick.Controls.Styles 1.4


Controls2.Button {
    id: buttonCalendar
    width: 90
    height: 20

    property var date_min: new Date(1800, 0, 1)
    property var date_max: new Date()
    property var date_selected: new Date()
    text: Qt.formatDate(date_selected, "dd . MM . yyyy")
    property string head_text: "Выбор даты"

    property int year: date_selected.getFullYear()
    property int month: date_selected.getMonth()
    property int day: date_selected.getDay()

    onClicked: {
        //dialogCalendar.setX(x)   // ((x+dialogCalendar.width) < window.width) ? (x) : (window.width-dialogCalendar.width) )
        //dialogCalendar.setY(y)   // ((y+height+dialogCalendar.height) < window.height) ? (y+height) : (window.height-dialogCalendar.height))
        dialogCalendar.open()
    }

    Dialog {
        id: dialogCalendar
        // Set the size of the dialog
        width: 250
        height: 300
        title: buttonCalendar.head_text

        // Create the dialog box content
        contentItem: Rectangle {
            id: dialogRect
            color: "#f7f7f7"

            // First there is a custom calendar
            Calendar {
                id: calenar
                anchors.left: parent.left
                anchors.leftMargin: 0
                anchors.top: parent.top
                anchors.topMargin: 0

                minimumDate: buttonCalendar.date_min
                maximumDate: buttonCalendar.date_max
                weekNumbersVisible: false
                selectedDate: date_selected

                style: CalendarStyle {
                    gridVisible: false
                    dayDelegate: Rectangle {
                        gradient: Gradient {
                            GradientStop {
                                position: 0.00
                                color: styleData.selected ? "#444" : (styleData.visibleMonth && styleData.valid ? "#222" : "#eee");
                            }
                            GradientStop {
                                position: 1.00
                                color: styleData.selected ? "#777" : (styleData.visibleMonth && styleData.valid ? "#111" : "#666");
                            }
                            GradientStop {
                                position: 1.00
                                color: styleData.selected ? "#444" : (styleData.visibleMonth && styleData.valid ? "#111" : "#555");
                            }
                        }

                        Label {
                            text: styleData.date.getDate()
                            anchors.centerIn: parent
                            color: styleData.valid ? "#ff9" : "gray"
                        }

                        Rectangle {
                            width: parent.width
                            height: 2
                            color: "#666"
                            anchors.bottom: parent.bottom
                        }

                        Rectangle {
                            width: 2
                            height: parent.height
                            color: "#666"
                            anchors.right: parent.right
                        }
                    }
                }

                onDoubleClicked: {
                    buttonCalendar.date_selected = calenar.selectedDate
                    dialogCalendar.close()
                }
            }

            // Делаем панель с кнопками
            Row {
                id: row
                height: 30
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.bottom: parent.bottom

                // Кнопка подтверждения выбранной даты
                Button {
                    id: dialogButtonCalOk
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    width: parent.width / 2 - 1

                    style: ButtonStyle {
                        background: Rectangle {
                            color: control.pressed ? "#d7d7d7" : "#f7f7f7"
                            border.width: 0
                        }

                        label: Text {
                            text: qsTr("Ok")
                            font.pixelSize: 12
                            color: "#333333"
                            verticalAlignment: Text.AlignVCenter
                            horizontalAlignment: Text.AlignHCenter
                        }
                    }

                    onClicked: {
                        buttonCalendar.date_selected = calenar.selectedDate
                        dialogCalendar.close()
                    }
                }

                // Вертикальный разделитель между кнопками
                Rectangle {
                    id: dividerVertical
                    width: 2
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    color: "#333333"
                }

                // Кнопка для закрытия диалога
                Button {
                    id: dialogButtonCalCancel
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    width: parent.width / 2 - 1

                    style: ButtonStyle {
                        background: Rectangle {
                            color: control.pressed ? "#d7d7d7" : "#f7f7f7"
                            border.width: 0
                        }

                        label: Text {
                            text: qsTr("Cancel")
                            font.pixelSize: 12
                            color: "#333333"
                            verticalAlignment: Text.AlignVCenter
                            horizontalAlignment: Text.AlignHCenter
                        }
                    }
                    // По нажатию на кнопку - просто закрываем диалог
                    onClicked: dialogCalendar.close()
                }
            }
        }
        /*onAccepted:  {
            buttonCalendar.date_selected = calendar.selectedDate
            date_selected = calendar.selectedDate
            buttonCalendar.text = Qt.formatDate(tempDate, "dd.MM.yyyy");
            dialogCalendar.close();
        }*/
    }
}
