// Combo_Ruling_Author.qml
import QtQuick 2.9
import QtQuick.Controls 2.2

ComboBox {
    id: combo_ruling_author
    font.pointSize: 10
    currentIndex: 0
    textRole: "key"
    wheelEnabled: true

    model: ListModel {
        ListElement { key: " - не выбрано - "; value: 0 }
        ListElement { key: "1) судья"; value: 1 }
        ListElement { key: "2) ГИБДД"; value: 2 }
        ListElement { key: "3) комиссия по делам несовершеннолетних"; value: 3 }
        ListElement { key: "4) УУП"; value: 4 }
    }
}
