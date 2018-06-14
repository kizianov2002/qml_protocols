// Combo_Tab69.qml
import QtQuick 2.5
import QtQuick.Controls 1.4

ComboBox {
    id: combo_tab69

    height: 35
    currentIndex: 0
    //activeFocusOnPress: true
    width: 200
	anchors.verticalCenter: parent.verticalCenter
    textRole: "key"
 

    model: ListModel {
		ListElement { key: "    - не выбрано - "}
		ListElement { key: "1)  ст. 2.9 КоАП "}
		ListElement { key: "2)  п. 1 ст. 24.5 КоАП "}
		ListElement { key: "3)  п. 2 ст. 24.5 КоАП, в том числе с передачей материалов дела  прокурору, в орган предварительного следствия или в орган дознания  при наличии в действиях признаков преступления "}
		ListElement { key: "4)  п. 3 ст. 24.5 КоАП "}
		ListElement { key: "5)  п. 6 ст. 24.5 КоАП "}
		ListElement { key: "6)  п. 7 ст. 24.5 КоАП "}
		ListElement { key: "9)  Иное "}
    }
}
