// Combo_Tab66.qml
import QtQuick 2.9
import QtQuick.Controls 2.2

ComboBox {
    id: combo_tab66
    font.pointSize: 10
    currentIndex: 0
    textRole: "key"
    wheelEnabled: true

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