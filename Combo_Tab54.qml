// Combo_Tab54.qml
import QtQuick 2.5
import QtQuick.Controls 1.4

ComboBox {
    id: combo_tab54
     
    height: 35
    currentIndex: 0
    //activeFocusOnPress: true
    width: 200
	anchors.verticalCenter: parent.verticalCenter
    textRole: "key"
 

    model: ListModel {
		ListElement { key: "       - не выбрано - "}
		ListElement { key: "4002)  Абхазия "}
		ListElement { key: "4003)  Австралия "}
		ListElement { key: "4004)  Эритрея "}
		ListElement { key: "4011)  Бирма "}
		ListElement { key: "4050)  Азербайджан "}
		ListElement { key: "4051)  Австрия "}
		ListElement { key: "4052)  Албания "}
		ListElement { key: "4054)  Алжир "}
		ListElement { key: "4057)  Ангола "}
		ListElement { key: "4060)  Андорра "}
		ListElement { key: "4063)  Антигуа и Барбуда "}
		ListElement { key: "4066)  Антильские острова "}
		ListElement { key: "4069)  Аомынь (Макао) "}
		ListElement { key: "4070)  Армения "}
		ListElement { key: "4072)  Аргентина "}
		ListElement { key: "4075)  Афганистан "}
		ListElement { key: "4078)  Багамские острова "}
		ListElement { key: "4081)  Бангладеш "}
		ListElement { key: "4084)  Барбадос "}
		ListElement { key: "4087)  Бахрейн "}
		ListElement { key: "4088)  Беларусь "}
		ListElement { key: "4090)  Белиз "}
		ListElement { key: "4093)  Бельгия "}
		ListElement { key: "4096)  Бенин "}
		ListElement { key: "4097)  Болгария "}
		ListElement { key: "4099)  Боливия "}
		ListElement { key: "4100)  Босния и Герцеговина "}
		ListElement { key: "4102)  Ботсвана "}
		ListElement { key: "4105)  Бразилия "}
		ListElement { key: "4108)  Бруней "}
		ListElement { key: "4111)  Буркина-Фасо "}
		ListElement { key: "4114)  Бурунди "}
		ListElement { key: "4117)  Бутан "}
		ListElement { key: "4120)  Вануату "}
		ListElement { key: "4123)  Ватикан "}
		ListElement { key: "4126)  Великобритания "}
		ListElement { key: "4127)  Венгрия "}
		ListElement { key: "4129)  Венесуэла "}
		ListElement { key: "4132)  Восточный Тимор "}
		ListElement { key: "4133)  Вьетнам "}
		ListElement { key: "4135)  Габон "}
		ListElement { key: "4138)  Гаити "}
		ListElement { key: "4141)  Гайана "}
		ListElement { key: "4144)  Гамбия "}
		ListElement { key: "4147)  Гана "}
		ListElement { key: "4150)  Гваделупа "}
		ListElement { key: "4153)  Гватемала "}
		ListElement { key: "4156)  Гвиана "}
		ListElement { key: "4159)  Гвинея "}
		ListElement { key: "4162)  Гвинея-Бисау "}
		ListElement { key: "4163)  Германия "}
		ListElement { key: "4165)  Гибралтар "}
		ListElement { key: "4168)  Гондурас "}
		ListElement { key: "4171)  Гренада "}
		ListElement { key: "4174)  Греция "}
		ListElement { key: "4175)  Грузия "}
		ListElement { key: "4177)  Дания "}
		ListElement { key: "4180)  Джибути "}
		ListElement { key: "4183)  Доминика "}
		ListElement { key: "4186)  Доминиканская Республика "}
		ListElement { key: "4189)  Египет "}
		ListElement { key: "4192)  Заир "}
		ListElement { key: "4195)  Замбия "}
		ListElement { key: "4198)  Западная Сахара "}
		ListElement { key: "4201)  Западное Самоа "}
		ListElement { key: "4204)  Западный Берлин "}
		ListElement { key: "4207)  Зимбабве "}
		ListElement { key: "4210)  Израиль "}
		ListElement { key: "4213)  Индия "}
		ListElement { key: "4216)  Индонезия "}
		ListElement { key: "4219)  Иордания "}
		ListElement { key: "4222)  Ирак "}
		ListElement { key: "4225)  Иран "}
		ListElement { key: "4228)  Ирландия "}
		ListElement { key: "4231)  Исландия "}
		ListElement { key: "4234)  Испания "}
		ListElement { key: "4237)  Италия "}
		ListElement { key: "4240)  Йемен "}
		ListElement { key: "4243)  Кабо-Верде "}
		ListElement { key: "4244)  Казахстан "}
		ListElement { key: "4246)  Камерун "}
		ListElement { key: "4249)  Камбоджа "}
		ListElement { key: "4252)  Канада "}
		ListElement { key: "4255)  Катар "}
		ListElement { key: "4258)  Кения "}
		ListElement { key: "4261)  Кипр "}
		ListElement { key: "4262)  Кыргызстан "}
		ListElement { key: "4264)  Кирибати "}
		ListElement { key: "4265)  Китай "}
		ListElement { key: "4265)  Гонконг "}
		ListElement { key: "4266)  КНДР "}
		ListElement { key: "4267)  Колумбия "}
		ListElement { key: "4270)  Коморские острова "}
		ListElement { key: "4273)  Конго "}
		ListElement { key: "4276)  Коста-Рика "}
		ListElement { key: "4279)  Кот-Дивуар "}
		ListElement { key: "4280)  Куба "}
		ListElement { key: "4282)  Кувейт "}
		ListElement { key: "4283)  Лаос "}
		ListElement { key: "4284)  Латвия "}
		ListElement { key: "4285)  Лесото "}
		ListElement { key: "4287)  лицо без гражданства "}
		ListElement { key: "4288)  Либерия "}
		ListElement { key: "4291)  Ливан "}
		ListElement { key: "4294)  Ливия "}
		ListElement { key: "4296)  Литва "}
		ListElement { key: "4297)  Лихтенштейн "}
		ListElement { key: "4300)  Люксембург "}
		ListElement { key: "4303)  Маврикий "}
		ListElement { key: "4306)  Мавритания "}
		ListElement { key: "4309)  Мадагаскар "}
		ListElement { key: "4310)  Македония "}
		ListElement { key: "4312)  Малави "}
		ListElement { key: "4315)  Малайзия "}
		ListElement { key: "4318)  Мали "}
		ListElement { key: "4321)  Мальдивская Республика "}
		ListElement { key: "4324)  Мальта "}
		ListElement { key: "4327)  Марокко "}
		ListElement { key: "4330)  Мартиника "}
		ListElement { key: "4333)  Мексика "}
		ListElement { key: "4336)  Мозамбик "}
		ListElement { key: "4337)  Молдова "}
		ListElement { key: "4339)  Монако "}
		ListElement { key: "4340)  Монголия "}
		ListElement { key: "4342)  Мьянма "}
		ListElement { key: "4345)  Намибия "}
		ListElement { key: "4348)  Науру "}
		ListElement { key: "4351)  Непал "}
		ListElement { key: "4354)  Нигер "}
		ListElement { key: "4357)  Нигерия "}
		ListElement { key: "4360)  Нидерланды "}
		ListElement { key: "4363)  Никарагуа "}
		ListElement { key: "4366)  Новая Зеландия "}
		ListElement { key: "4369)  Новая Каледония "}
		ListElement { key: "4372)  Норвегия "}
		ListElement { key: "4375)  ОАЭ "}
		ListElement { key: "4378)  Оман "}
		ListElement { key: "4381)  Пакистан "}
		ListElement { key: "4382)  Палестина "}
		ListElement { key: "4384)  Панама "}
		ListElement { key: "4387)  Папуа-Новая Гвинея "}
		ListElement { key: "4390)  Парагвай "}
		ListElement { key: "4393)  Перу "}
		ListElement { key: "4394)  Польша "}
		ListElement { key: "4396)  Португалия "}
		ListElement { key: "4399)  Пуэрто-Рико "}
		ListElement { key: "4402)  Реюньон "}
		ListElement { key: "4404)  Россия "}
		ListElement { key: "4405)  Руанда "}
		ListElement { key: "4406)  Румыния "}
		ListElement { key: "4408)  Сальвадор "}
		ListElement { key: "4411)  Сан-Марино "}
		ListElement { key: "4414)  Сан-Томе и Принсипи "}
		ListElement { key: "4417)  Саудовская Аравия "}
		ListElement { key: "4420)  Свазиленд "}
		ListElement { key: "4423)  Сейшельские Острова "}
		ListElement { key: "4426)  Сенегал "}
		ListElement { key: "4429)  Сент-Винсент и Гренадины "}
		ListElement { key: "4432)  Сент-Кристофер и Невис "}
		ListElement { key: "4435)  Сент-Люсия "}
		ListElement { key: "4436)  Сербия "}
		ListElement { key: "4438)  Сингапур "}
		ListElement { key: "4441)  Сирия "}
		ListElement { key: "4442)  Словакия "}
		ListElement { key: "4443)  Словения "}
		ListElement { key: "4444)  США "}
		ListElement { key: "4447)  Соломоновы острова "}
		ListElement { key: "4450)  Сомали "}
		ListElement { key: "4453)  Судан "}
		ListElement { key: "4456)  Суринам "}
		ListElement { key: "4459)  Сьерра-Леоне "}
		ListElement { key: "4462)  Сянган (Гонконг) "}
		ListElement { key: "4463)  Таджикистан "}
		ListElement { key: "4465)  Тайланд "}
		ListElement { key: "4467)  Тайвань "}
		ListElement { key: "4468)  Танзания "}
		ListElement { key: "4471)  Того "}
		ListElement { key: "4474)  Тонга "}
		ListElement { key: "4477)  Тринидад и Тобаго "}
		ListElement { key: "4480)  Тувалу "}
		ListElement { key: "4483)  Тунис "}
		ListElement { key: "4484)  Туркменистан "}
		ListElement { key: "4486)  Турция "}
		ListElement { key: "4489)  Уганда "}
		ListElement { key: "4490)  Узбекистан "}
		ListElement { key: "4491)  Украина "}
		ListElement { key: "4492)  Уругвай "}
		ListElement { key: "4495)  Фиджи "}
		ListElement { key: "4498)  Филиппины "}
		ListElement { key: "4501)  Финляндия "}
		ListElement { key: "4504)  Франция "}
		ListElement { key: "4507)  Хорватия "}
		ListElement { key: "4510)  ЦАР "}
		ListElement { key: "4513)  Чад "}
		ListElement { key: "4514)  Черногория "}
		ListElement { key: "4515)  Чехия "}
		ListElement { key: "4516)  Чили "}
		ListElement { key: "4518)  Чехословакия "}
		ListElement { key: "4519)  Швейцария "}
		ListElement { key: "4522)  Швеция "}
		ListElement { key: "4525)  Шри-Ланка "}
		ListElement { key: "4528)  Эквадор "}
		ListElement { key: "4531)  Экваториальная Гвинея "}
		ListElement { key: "4532)  Эстония "}
		ListElement { key: "4534)  Эфиопия "}
		ListElement { key: "4535)  Югославия "}
		ListElement { key: "4537)  Южная Корея "}
		ListElement { key: "4538)  Южная Осетия "}
		ListElement { key: "4540)  ЮАР "}
		ListElement { key: "4543)  Ямайка "}
		ListElement { key: "4546)  Япония "}
    }
}
