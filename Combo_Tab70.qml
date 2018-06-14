// Combo_Tab70.qml
import QtQuick 2.5
import QtQuick.Controls 1.4

ComboBox {
    id: combo_tab70
	
    height: 35
    //activeFocusOnPress: true
    width: 200
	anchors.verticalCenter: parent.verticalCenter
    currentIndex: 0
    textRole: "key"
 

    model: ListModel {
        id: myModel
		ListElement { key: "    - не выбрано - "}
		ListElement { key: "1)  ст. 31.5 КоАП"}
		ListElement { key: "2)  Ст. 31.6 КоАП"}
    }
}
