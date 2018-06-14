// Combo_FizUrr.qml
import QtQuick 2.5
import QtQuick.Controls 1.4

ComboBox {
    id: combo_tab16

    height: 35
    currentIndex: 1
    //activeFocusOnPress: true
    width: 200
    anchors.verticalCenter: parent.verticalCenter
    textRole: "key"
 

    model: ListModel {
        ListElement { key: "Владелец автомобиля - Физическое лицо"}
        ListElement { key: "Владелец автомобиля - Юридическое лицо"}
    }
}
