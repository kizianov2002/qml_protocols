// Combo_Tab62.qml
import QtQuick 2.5
import QtQuick.Controls 1.4

ComboBox {
    id: combo_tab62

    height: 35
    currentIndex: 0
    //activeFocusOnPress: true
    width: 200
	anchors.verticalCenter: parent.verticalCenter
    textRole: "key"
 

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
