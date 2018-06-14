// Combo_Tab65.qml
import QtQuick 2.5
import QtQuick.Controls 1.4

ComboBox {
    id: combo_tab65

    height: 35
    currentIndex: 0
    //activeFocusOnPress: true
    width: 200
	anchors.verticalCenter: parent.verticalCenter
    textRole: "key"
 

    model: ListModel {
		ListElement { key: "    - не выбрано - "}
		ListElement { key: "1)  Предупреждение "}
		ListElement { key: "2)  Штраф "}
		ListElement { key: "3)  Штраф + конфискация "}
		ListElement { key: "4)  Лишение права управления ТС "}
		ListElement { key: "5)  Административный арест "}
		ListElement { key: "6)  Лишение права управления ТС + штраф "}
		ListElement { key: "7)  Лишение права управления ТС + конфискация "}
		ListElement { key: "8)  Дисквалификация "}
		ListElement { key: "9)  Обязательные работы "}
    }
}
