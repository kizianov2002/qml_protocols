// Combo_Tab61.qml
import QtQuick 2.9
import QtQuick.Controls 2.2

ComboBox {
    id: combo_tab61
    font.pointSize: 10
    currentIndex: 0
    textRole: "key"
    wheelEnabled: true

    model: ListModel {
		ListElement { key: "    - не выбрано - "}
		ListElement { key: "1)  Физическое лицо"}
		ListElement { key: "2)  Юридическое лицо"}
    }
}
