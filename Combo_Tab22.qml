// Combo_Tab22.qml
import QtQuick 2.5
import QtQuick.Controls 1.4

ComboBox {
    id: combo_tab22

    height: 35
    currentIndex: 0
    //activeFocusOnPress: true
    width: 200
	anchors.verticalCenter: parent.verticalCenter
    textRole: "key"
 

    model: ListModel {
		ListElement { key: "    - не выбрано - "}
		ListElement { key: "A)  Мотоцикл "}
		ListElement { key: "B)  Легковой автомобиль "}
		ListElement { key: "C)  Гpузовой автомобиль "}
		ListElement { key: "D)  Автобус "}
		ListElement { key: "E)  Пpицеп "}
		ListElement { key: "F)  Трамвай "}
		ListElement { key: "G)  Троллейбус "}
		ListElement { key: "H)  Трактор "}
		ListElement { key: "K)  Самоходный механизм "}
		ListElement { key: "T)  Подвижной состав (железнодорожный) "}
		ListElement { key: "J)  Велосипед "}
		ListElement { key: "L)  Гужевой "}
		ListElement { key: "М)  Мопед, скутер "}
    }
}
