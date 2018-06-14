// Combo_Tab61.qml
import QtQuick 2.5
import QtQuick.Controls 1.4

ComboBox {
    id: combo_tab61

    height: 35
    currentIndex: 0
    //activeFocusOnPress: true
    width: 200
	anchors.verticalCenter: parent.verticalCenter
    textRole: "key"
 

    model: ListModel {
		ListElement { key: "    - не выбрано - "}
		ListElement { key: "1)  Физическое лицо"}
		ListElement { key: "2)  Юридическое лицо"}
    }
}
