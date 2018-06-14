import QtQuick 2.9
import QtQuick.Controls 2.2

ApplicationWindow {
    visible: true
    width: 740
    height: 640
    title: qsTr("Составление протокола")

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        Page1Form {
            bn_next.onClicked: {
                tabBar.currentIndex = 1
            }
        }

        Page2Form {
            bn_next.onClicked:  {
                tabBar.currentIndex = 2
            }
            bn_pred.onClicked: {
                tabBar.currentIndex = 0
            }
        }

        Page3Form {
            bn_next.onClicked: {
                tabBar.currentIndex = 3
            }
            bn_pred.onClicked: {
                tabBar.currentIndex = 1
            }
        }

        Page4Form {
            bn_next.onClicked: {
                tabBar.currentIndex = 4
            }
            bn_pred.onClicked: {
                tabBar.currentIndex = 2
            }
        }

        Page5Form {
            bn_next.onClicked: {
                tabBar.currentIndex = 5
            }
            bn_pred.onClicked: {
                tabBar.currentIndex = 3
            }
        }

        Page6Form {
            bn_next.onClicked: {
                tabBar.currentIndex = 6
            }
            bn_pred.onClicked: {
                tabBar.currentIndex = 4
            }
        }

        Page7Form {
            bn_next.onClicked: {
                tabBar.currentIndex = 7
            }
            bn_pred.onClicked: {
                tabBar.currentIndex = 5
            }
        }

        Page8Form {
            bn_next.onClicked: {
                tabBar.currentIndex = 7
            }
            bn_pred.onClicked: {
                tabBar.currentIndex = 6
            }
        }
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex

        TabButton {
            text: qsTr("Данные о\nводителе")
        }
        TabButton {
            text: qsTr("Адрес и\nтелефон")
        }
        TabButton {
            text: qsTr("Данные об\nавтомобиле")
        }
        TabButton {
            text: qsTr("Данные о\nпроишестии")
        }
        TabButton {
            text: qsTr("Данные о\nправонарушении")
        }
        TabButton {
            text: qsTr("Данные о\nделопроизводстве")
        }
        TabButton {
            text: qsTr("Административное\nнаказание")
        }
        TabButton {
            text: qsTr("Исполнение\nпостановления")
        }
    }
}
