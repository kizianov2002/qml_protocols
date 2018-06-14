// Combo_Tab08.qml
import QtQuick 2.9
import QtQuick.Controls 2.2

ComboBox {
    id: combo_tab08
    font.pointSize: 10
    currentIndex: 0
    textRole: "key"
    wheelEnabled: true

    model: ListModel {
		ListElement { key: "       - не выбрано - "}
		ListElement { key: "1101)  Алтайский край "}
		ListElement { key: "1103)  Краснодарский край "}
		ListElement { key: "1104)  Красноярский край "}
		ListElement { key: "1105)  Приморский край "}
		ListElement { key: "1106)  УМВД России по г. Севастополю "}
		ListElement { key: "1107)  Ставропольский край "}
		ListElement { key: "1108)  Хабаровский край "}
		ListElement { key: "1109)  МВД по Республике Крым "}
		ListElement { key: "1110)  Амурская область "}
		ListElement { key: "1111)  Архангельская область "}
		ListElement { key: "1112)  Астраханская область "}
		ListElement { key: "1114)  Белгородская область "}
		ListElement { key: "1115)  Брянская область "}
		ListElement { key: "1117)  Владимирская область "}
		ListElement { key: "1118)  Волгоградская область "}
		ListElement { key: "1119)  Вологодская область "}
		ListElement { key: "1120)  Воронежская область "}
		ListElement { key: "1122)  Нижегородская область "}
		ListElement { key: "1124)  Ивановская область "}
		ListElement { key: "1125)  Иркутская область "}
		ListElement { key: "1126)  Чечено-Ингушская Республика "}
		ListElement { key: "1127)  Калининградская область "}
		ListElement { key: "1128)  Тверская область "}
		ListElement { key: "1129)  Калужская область "}
		ListElement { key: "1130)  Камчатский край "}
		ListElement { key: "1132)  Кемеровская область "}
		ListElement { key: "1133)  Кировская область "}
		ListElement { key: "1134)  Костромская область "}
		ListElement { key: "1136)  Самарская область "}
		ListElement { key: "1137)  Курганская область "}
		ListElement { key: "1138)  Курская область "}
		ListElement { key: "1139)  Агинский Бурятский автономный округ "}
		ListElement { key: "1140)  г. Санкт - Петербург "}
		ListElement { key: "1141)  Ленинградская область "}
		ListElement { key: "1142)  Липецкая область "}
		ListElement { key: "1143)  Пермский край (Коми - Пермяцкий АО) "}
		ListElement { key: "1144)  Магаданская область "}
		ListElement { key: "1145)  г. Москва "}
		ListElement { key: "1146)  Московская область "}
		ListElement { key: "1147)  Мурманская область "}
		ListElement { key: "1148)  Корякский автономный округ "}
		ListElement { key: "1149)  Новгородская область "}
		ListElement { key: "1150)  Новосибирская область "}
		ListElement { key: "1151)  Ненецкий автономный округ "}
		ListElement { key: "1152)  Омская область "}
		ListElement { key: "1153)  Оренбургская область "}
		ListElement { key: "1154)  Орловская область "}
		ListElement { key: "1155)  Таймырский (Долгано - Ненецкий) автономный округ "}
		ListElement { key: "1156)  Пензенская область "}
		ListElement { key: "1157)  Пермский край "}
		ListElement { key: "1158)  Псковская область "}
		ListElement { key: "1159)  Усть - Ордынский Бурятский автономный округ "}
		ListElement { key: "1160)  Ростовская область "}
		ListElement { key: "1161)  Рязанская область "}
		ListElement { key: "1162)  Ханты - Мансийский автономный округ -Югра "}
		ListElement { key: "1163)  Саратовская область "}
		ListElement { key: "1164)  Сахалинская область "}
		ListElement { key: "1165)  Свердловская область "}
		ListElement { key: "1166)  Смоленская область "}
		ListElement { key: "1167)  Эвенкийский автономный округ "}
		ListElement { key: "1168)  Тамбовская область "}
		ListElement { key: "1169)  Томская область "}
		ListElement { key: "1170)  Тульская область "}
		ListElement { key: "1171)  Тюменская область "}
		ListElement { key: "1172)  Ямало - Ненецкий автономный округ "}
		ListElement { key: "1173)  Ульяновская область "}
		ListElement { key: "1174)  Республика Ингушетия "}
		ListElement { key: "1175)  Челябинская область "}
		ListElement { key: "1176)  Читинская область (Забайкальский край) "}
		ListElement { key: "1177)  Чукотский автономный округ "}
		ListElement { key: "1178)  Ярославская область "}
		ListElement { key: "1179)  Республика Адыгея (Адыгея) "}
		ListElement { key: "1180)  Республика Башкортостан "}
		ListElement { key: "1181)  Республика Бурятия "}
		ListElement { key: "1182)  Республика Дагестан "}
		ListElement { key: "1183)  Кабардино - Балкарская Республика "}
		ListElement { key: "1184)  Республика Алтай "}
		ListElement { key: "1185)  Республика Калмыкия "}
		ListElement { key: "1186)  Республика Карелия "}
		ListElement { key: "1187)  Республика Коми "}
		ListElement { key: "1188)  Республика Марий Эл "}
		ListElement { key: "1189)  Республика Мордовия "}
		ListElement { key: "1190)  Республика Северная Осетия - Алания "}
		ListElement { key: "1191)  Карачаево - Черкесская Республика "}
		ListElement { key: "1192)  Республика Татарстан (Татарстан) "}
		ListElement { key: "1193)  Республика Тыва "}
		ListElement { key: "1194)  Удмуртская Республика "}
		ListElement { key: "1195)  Республика Хакасия "}
		ListElement { key: "1196)  Чеченская Республика "}
		ListElement { key: "1197)  Чувашская Республика - Чувашия "}
		ListElement { key: "1198)  Республика Саха (Якутия) "}
		ListElement { key: "1199)  Еврейская автономная область "}
    }
}
