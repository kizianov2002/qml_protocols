// Combo_Tab16.qml
import QtQuick 2.9
import QtQuick.Controls 2.2

ComboBox {
    id: combo_tab16
    font.pointSize: 10
    currentIndex: 0
    textRole: "key"
    wheelEnabled: true

    model: ListModel {
		ListElement { key: "    - не выбрано - "}
		ListElement { key: "Т)  Текущий"}
		ListElement { key: "А)  Архивный"}
    }
}
