&НаКлиенте
Процедура НадписьИмяНажатие(Элемент)
	ПараметрыФормы = Новый Структура("Ключ", СсылкаДляСчастливчика);
	ОткрытьФорму("Справочник.Люди.ФормаОбъекта", ПараметрыФормы);
КонецПроцедуры

&НаКлиенте
Процедура Поиск(Команда)
	ПоискНаСервере();
КонецПроцедуры


&НаСервере
Процедура ПоискНаСервере()
	Счастливчик = Справочники.Люди.ПустаяСсылка();
	СледующийДеньРожденияСчастливчика = '00010101';
	Выборка = Справочники.Люди.Выбрать();
	Пока Выборка.Следующий() Цикл
		Если Выборка.ЭтоГруппа Тогда
			Продолжить;
		КонецЕсли;
		СледующийДеньРождения = УтилитыКлиентСервер.ПолучитьСледующийДеньРождения(
			Выборка.ДатаРождения
		);
		Если
			Счастливчик.Пустая() ИЛИ
			СледующийДеньРождения < СледующийДеньРожденияСчастливчика
		Тогда
			Счастливчик = Выборка.Ссылка;
			СледующийДеньРожденияСчастливчика = СледующийДеньРождения;
		КонецЕсли;
	КонецЦикла;
	Элементы.НадписьИмя.Заголовок = Счастливчик.Наименование;
	Элементы.НадписьДень.Заголовок = Формат(СледующийДеньРожденияСчастливчика, "ДФ=dd.MM.yyyy");
	Элементы.НадписьСвязь.Заголовок = Счастливчик.Связь;
	СсылкаНаСчастливичка = Счастливчик;
КонецПроцедуры