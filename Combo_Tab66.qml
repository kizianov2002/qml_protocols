// Combo_Tab66.qml
import QtQuick 2.5
import QtQuick.Controls 1.4

ComboBox {
    id: combo_tab66

    height: 35
    currentIndex: 0
    //activeFocusOnPress: true
    width: 200
	anchors.verticalCenter: parent.verticalCenter
    textRole: "key"


    model: ListModel {
		ListElement { key: "    - не выбрано - "}
		ListElement { key: "1)  Исполнено "}
		ListElement { key: "2)  Материалы переданы судебному при-  ставу-исполнителю "}
		ListElement { key: "3)  Приостановлено "}
		ListElement { key: "4)  Прекращено "}
		ListElement { key: "5)  Не исполнено ст. 31.10 ч. 2 п. 1 КоАП "}
		ListElement { key: "6)  Не исполнено ст. 31.10 ч. 2 п. 2 КоАП "}
		ListElement { key: "7)  Не исполнено ст. 31.10 ч. 2 п. 3 КоАП "}
    }
}
