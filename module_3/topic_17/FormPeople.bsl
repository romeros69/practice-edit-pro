&НаКлиенте
Процедура ОбновитьНадпись()
	СледующийДеньРождения = УтилитыКлиентСервер.ПолучитьСледующийДеньРождения(Объект.ДатаРождения);
	ОсталосьСекунд = СледующийДеньРождения - НачалоДня(ТекущаяДата());
	ОсталосьДней = ОсталосьСекунд / (24 * 60 * 60);
	Элементы.НадписьОсталосьДоДняРождения.Заголовок = "До дня рождения осталось " + Цел(ОсталосьДней) + " дн.";
КонецПроцедуры

&НаКлиенте
Процедура ПриОткрытии(Отказ)
	// Вставить содержимое обработчика.
КонецПроцедуры