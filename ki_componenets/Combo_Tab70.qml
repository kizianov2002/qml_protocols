// Combo_Tab70.qml
import QtQuick 2.9
import QtQuick.Controls 2.2

ComboBox {
    id: combo_tab70
    font.pointSize: 10
    currentIndex: 0
    textRole: "key"
    wheelEnabled: true

    model: ListModel {
		ListElement { key: "    - не выбрано - "}
		ListElement { key: "1)  ст. 31.5 КоАП"}
		ListElement { key: "2)  Ст. 31.6 КоАП"}
    }
}
