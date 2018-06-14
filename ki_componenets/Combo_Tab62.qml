// Combo_Tab62.qml
import QtQuick 2.9
import QtQuick.Controls 2.2

ComboBox {
    id: combo_tab62
    font.pointSize: 10
    currentIndex: 0
    textRole: "key"
    wheelEnabled: true

    model: ListModel {
		ListElement { key: "    - не выбрано - "}
		ListElement { key: "1)  Водитель "}
		ListElement { key: "2)  Пешеход "}
		ListElement { key: "3)  Должностное лицо "}
		ListElement { key: "4)  Юридическое лицо "}
		ListElement { key: "5)  Иное лицо "}
		ListElement { key: "6)  Собственник транспортного средства "}
		ListElement { key: "7)  Пассажир "}
    }
}
