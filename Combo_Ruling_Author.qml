// Combo_Ruling_Author.qml
import QtQuick 2.5
import QtQuick.Controls 1.4

ComboBox {
    id: combo_ruling_author

    height: 35
    currentIndex: 0
    //activeFocusOnPress: true
    width: 200
    anchors.verticalCenter: parent.verticalCenter
    textRole: "key"
 

    model: ListModel {
        ListElement { key: " - не выбрано - "; value: 0 }
        ListElement { key: "1) судья"; value: 1 }
        ListElement { key: "2) ГИБДД"; value: 2 }
        ListElement { key: "3) комиссия по делам несовершеннолетних"; value: 3 }
        ListElement { key: "4) УУП"; value: 4 }
    }
}
