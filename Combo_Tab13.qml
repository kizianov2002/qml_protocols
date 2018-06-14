// Combo_Tab13.qml
import QtQuick 2.5
import QtQuick.Controls 1.4

ComboBox {
    id: combo_tab13

    height: 35
    activeFocusOnPress: true
    currentIndex: 0
    //activeFocusOnPress: true
    width: 200
    anchors.verticalCenter: parent.verticalCenter
    textRole: "key"
 

    model: ListModel {
		ListElement { key: "     - не выбрано - "}
		ListElement { key: "11)  первичная регистрация "}
		ListElement { key: "12)  регистрация снятых с учета "}
		ListElement { key: "13)  временная регистрация ТС (на срок проведения проверок, на срок  временной прописки, регистрация испытательной техники) "}
		ListElement { key: "14)  временный учет (временная регистрация места пребывания ТС без  выдачи документов) "}
		ListElement { key: "15)  регистрация ТС, ввезенных из-за пределов Российской Федерации "}
		ListElement { key: "16)  регистрация ТС, прибывших из других регионов Российской Федерации "}
		ListElement { key: "17)  регистрация ТС по новому месту жительства собственника, прибывшего  из другого субъекта Российской Федерации, с одновременным снятием с  учета по прежнему месту жительства. "}
		ListElement { key: "18)  восстановление регистрации после аннулирования "}
		ListElement { key: "18)  восстановление регистрации после аннулирования "}
		ListElement { key: "21)  постановка на постоянный учет в связи со сверкой "}
		ListElement { key: "22)  постановка на оперативный учет "}
		ListElement { key: "23)  постановка на постоянный учет "}
		ListElement { key: "47)  наложение ограничений "}
		ListElement { key: "24)  постановка в розыск утраченной спецпродукции "}
		ListElement { key: "25)  постановка уничтоженной спецпродукции "}
		ListElement { key: "26)  учет изготовленной и отгруженной спецпродукции (по информации  предприятий-изготовителей) "}
		ListElement { key: "27)  учет выданной и распределенной спецпродукции (по информации  подразделений ГИБДД) "}
		ListElement { key: "28)  учет закрепленной спецпродукции "}
		ListElement { key: "29)  учет ПТС, выданных заводами-изготовителями "}
		ListElement { key: "30)  учет ПТС, выданных таможенными органами "}
		ListElement { key: "31)  резерв "}
		ListElement { key: "32)  Оформление первичного материала по административному правонарушению "}
		ListElement { key: "33)  учет лиц в розыске "}
		ListElement { key: "34)  учет утраченного оружия "}
		ListElement { key: "35)  первичная выдача после обучения "}
		ListElement { key: "36)  первичная выдача после самоподготовки "}
		ListElement { key: "37)  замена в связи с утратой "}
		ListElement { key: "38)  замена в связи с истечением срока действия "}
		ListElement { key: "39)  открытие новой категории "}
		ListElement { key: "40)  выдача международного водительского удостоверения "}
		ListElement { key: "41)  замена государственного регистрационного знака "}
		ListElement { key: "42)  выдача дубликата регистрационного документа "}
		ListElement { key: "43)  выдача (замена) паспорта ТС "}
		ListElement { key: "44)  замена номерного агрегата, цвета, изменение конструкции ТС "}
		ListElement { key: "45)  изменение Ф.И.О. (наименования) владельца "}
		ListElement { key: "46)  изменение места жительства (юридического адреса) владельца в  пределах территории обслуживания регистрационным пунктом "}
		ListElement { key: "47)  наличие запретов и ограничений "}
		ListElement { key: "48)  снятие запретов и ограничений "}
		ListElement { key: "49)  регистрация залога ТС "}
		ListElement { key: "50)  прекращение регистрации залога ТС "}
		ListElement { key: "51)  коррекция иных реквизитов "}
		ListElement { key: "52)  выдача акта технического осмотра "}
		ListElement { key: "53)  проведение ГТО "}
		ListElement { key: "54)  постоянная регистрация ТС по окончанию временной "}
		ListElement { key: "55)  коррекция реквизитов по информации налоговых органов "}
		ListElement { key: "56)  коррекция реквизитов при проведении ГТО "}
		ListElement { key: "52)  коррекция ОУ "}
		ListElement { key: "53)  коррекция ПУ "}
		ListElement { key: "54)  перевод с ОУ на ПУ "}
		ListElement { key: "55)  коррекция в связи со сверкой "}
		ListElement { key: "52)  коррекция наложенных ограничений "}
		ListElement { key: "56)  коррекция реквизитов "}
		ListElement { key: "57)  Оформление этапа производства по делу об АП "}
		ListElement { key: "59)  коррекция реквизитов "}
		ListElement { key: "48)  снятие ограничений "}
		ListElement { key: "61)  в связи с изменением места регистрации "}
		ListElement { key: "62)  в связи с прекращением права собственности (отчуждение, конфискация  ТС) "}
		ListElement { key: "63)  в связи с вывозом ТС за пределы Российской Федерации "}
		ListElement { key: "64)  в связи с окончанием срока временной регистрации "}
		ListElement { key: "65)  в связи с утилизацией "}
		ListElement { key: "66)  в связи с признанием регистрации недействительной "}
		ListElement { key: "67)  снятие с временного учета "}
		ListElement { key: "68)  снятие с учета в связи с кражей или угоном "}
		ListElement { key: "69)  постановка с одновременным снятием с учета "}
		ListElement { key: "71)  с ОУ в связи с обнаружением "}
		ListElement { key: "72)  с ОУ за давностью лет "}
		ListElement { key: "73)  с ОУ в связи с не подтверждением "}
		ListElement { key: "74)  с ОУ в связи с переводом на ПУ "}
		ListElement { key: "75)  с ПУ в связи с обнаружением "}
		ListElement { key: "76)  с ПУ за давностью лет "}
        ListElement { key: "77)  чистка ФКУ \"ГИАЦ МВД России\" "}
		ListElement { key: "78)  наложенных ограничений "}
		ListElement { key: "81)  документов в связи с обнаружением "}
		ListElement { key: "82)  удаление ошибочно введенной записи "}
		ListElement { key: "83)  удаление в связи со сверкой "}
		ListElement { key: "84)  перевод в архив в связи с корректировкой "}
		ListElement { key: "91)  по наследству с заменой государственных регистрационных знаков "}
		ListElement { key: "92)  по наследству с сохранением государственных регистрационных знаков  за новым собственником (наследником) "}
		ListElement { key: "93)  по сделкам, произведенным в любой форме (купля-продажа, дарение,  др.) с заменой государственных регистрационных знаков "}
		ListElement { key: "94)  по сделкам, произведенным в любой форме (купля-продажа, дарение,  др.) с  сохранением государственных регистрационных знаков за новым  собственником "}
		ListElement { key: "95)  учет прекращения действия водительского удостоверения "}
		ListElement { key: "96)  учет восстановления действия водительского удостоверения "}
    }
}
