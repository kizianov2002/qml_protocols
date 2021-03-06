// Combo_Tab14.qml
import QtQuick 2.9
import QtQuick.Controls 2.2

ComboBox {
    id: combo_tab14
    font.pointSize: 10
    currentIndex: 0
    textRole: "key"
    wheelEnabled: true

    model: ListModel {
        ListElement { key: "    - не выбрано - "}
        ListElement { key: "10) Справка-счет "}
        ListElement { key: "11) Паспорт гражданина России (СССР) "}
        ListElement { key: "12) Заграничный паспорт "}
        ListElement { key: "13) Вкладыш паспорта "}
        ListElement { key: "14) Паспорт иностранных граждан "}
        ListElement { key: "15) Вид на жительство "}
        ListElement { key: "16) Свидетельство о временной регистрации "}
        ListElement { key: "17) Служебное удостоверение сотрудника МВД России "}
        ListElement { key: "20) Паспорт транспортного средства "}
        ListElement { key: "21) Паспорт шасси транспортного средства "}
        ListElement { key: "22) Сертификат международного ТО "}
        ListElement { key: "25) Протокол о направлении на медицинское освидетельствование на  состояние опьянения<1> "}
        ListElement { key: "26) Протокол об административном задержании "}
        ListElement { key: "27) Протокол о доставлении "}
        ListElement { key: "28) Протокол о личном досмотре, досмотре вещей, находящихся при  физическом лице. "}
        ListElement { key: "29) Постановление о наложении административного штрафа за АП, выявленное  средствами ФВФ "}
        ListElement { key: "30) Технический паспорт "}
        ListElement { key: "31) Технический паспорт транспортного средства индивидуального владельца "}
        ListElement { key: "32) Технический паспорт транспортного средства государственного  владельца "}
        ListElement { key: "33) Регистрационный документ на транспортное средство, выданный  компетентными органами Украины в соответствии с законодательством  Украины "}
        ListElement { key: "38) Определение об отказе в возбуждении дела об АП "}
        ListElement { key: "39) Определение о возбуждении дела об АП и проведении административного  расследования "}
        ListElement { key: "40) Водительское удостоверение старого образца "}
        ListElement { key: "41) Международное водительское удостоверение (образец 1998 года) "}
        ListElement { key: "42) Водительское удостоверение (образец 1992 года) "}
        ListElement { key: "43) Водительское удостоверение (образец 1993 года) "}
        ListElement { key: "44) Национальное водительское удостоверение "}
        ListElement { key: "45) Водительское удостоверение<2> "}
        ListElement { key: "46) Международное водительское удостоверение<3> "}
        ListElement { key: "49) Иное водительское удостоверение (трактор, трамвай, троллейбус) "}
        ListElement { key: "50) Временное разрешение на право управления транспортным средством "}
        ListElement { key: "51) Временное разрешение (образец 2002 года) "}
        ListElement { key: "52) Грузовая таможенная декларация (ГТД) "}
        ListElement { key: "53) Таможенный приходной ордер (ТПО) "}
        ListElement { key: "54) Протокол осмотра места совершения АП "}
        ListElement { key: "55) Акт освидетельствования на состояние алкогольного опьянения<4> "}
        ListElement { key: "56) Рапорт об обнаружении данных, указывающих на наличие в действиях ЮЛ  или ДЛ события АП "}
        ListElement { key: "57) Постановление о прекращении производства по делу об АП "}
        ListElement { key: "58) Определение о передаче дела по подсудности (территориальной) "}
        ListElement { key: "59) Определение о передаче дела по подведомственности "}
        ListElement { key: "60) Свидетельство о регистрации транспортного средства (образец 1998  года) "}
        ListElement { key: "61) Свидетельство на высвободившийся номерной агрегат "}
        ListElement { key: "62) Свидетельство о регистрации залога транспортного средства "}
        ListElement { key: "63) Свидетельство о регистрации транспортного средства "}
        ListElement { key: "64) Страховой полис ОСАГО "}
        ListElement { key: "65) Специальный знак (к полису ОСАГО) "}
        ListElement { key: "66) Постановление суда "}
        ListElement { key: "67) Корешок предупреждения о нарушении ПДД "}
        ListElement { key: "68) Акт медицинского освидетельствования на состояние опьянения "}
        ListElement { key: "69) Постановление о наложении административного штрафа (предупреждения)  без составления протокола об АП "}
        ListElement { key: "70) Государственный регистрационный знак транспортного средства "}
        ListElement { key: "71) Протокол об АП физического лица (образец 2002 года) "}
        ListElement { key: "72) Протокол об АП юридического лица (образец 2002 года) "}
        ListElement { key: "73) Протокол об отстранении от управления транспортным средством  (образец 2002 года) "}
        ListElement { key: "74) Протокол о направлении на медицинское освидетельствование на  состояние опьянения "}
        ListElement { key: "75) Акт об освидетельствовании участника дорожного движения на состояние  алкогольного опьянения, проведенного сотрудником милиции с  применением технических средств. "}
        ListElement { key: "76) Протокол о задержании транспортного средства "}
        ListElement { key: "77) Протокол о запрещении эксплуатации транспортного средства "}
        ListElement { key: "78) Постановление по делу об АП физического лица "}
        ListElement { key: "79) Постановление по делу об АП юридического лица "}
        ListElement { key: "80) Акт технического осмотра транспортного средств "}
        ListElement { key: "81) Талон о прохождении государственного технического осмотра "}
        ListElement { key: "82) Акт о выявленных подделках "}
        ListElement { key: "83) Блокнот \"запрос\" "}
        ListElement { key: "84) Документ органов социальной защиты населения "}
        ListElement { key: "85) Договор, удостоверенный в нотариальном порядке "}
        ListElement { key: "86) Договор, совершенный в простой письменной форме "}
        ListElement { key: "87) Решение суда "}
        ListElement { key: "88) Документ о праве наследования имущества "}
        ListElement { key: "89) Свидетельство о праве собственности на долю в общем имуществе  супругов "}
        ListElement { key: "90) Иные виды специальной продукции и документов "}
        ListElement { key: "91) Доверенность "}
        ListElement { key: "92) Протокол контроля трезвости "}
        ListElement { key: "93) Протокол об АП "}
        ListElement { key: "94) Пропуск на перевозку крупногабаритных и токсичных, взрывоопасных  грузов "}
        ListElement { key: "95) Штрафные квитанции "}
        ListElement { key: "96) Предписание на транспортное средство (в серии хххх) "}
        ListElement { key: "97) Удостоверение ввоза транспортного средства "}
        ListElement { key: "98) Свидетельство о соответствии конструкции<5> "}
        ListElement { key: "99) Свидетельство о допуске к перевозке опасных грузов "}
    }
}
