&НаКлиенте
Процедура Перевести(Команда)
	Перевод = ПереводНаСервере(Текст);
КонецПроцедуры

&НаСервереБезКонтекста
Функция ИскатьПереводНаСервере(Слово)
	Выборка = Справочники.Слова.Выбрать();
	Пока Выборка.Следующий() Цикл
		Если НРег(Слово) = Нрег(Выборка.Наименование) Тогда
			Возврат Выборка.Перевод;
		КонецЕсли;
	КонецЦикла;
	Возврат Слово;
КонецФункции

&НаСервереБезКонтекста
Функция ЭтоАнглийскаяБуква(Символ)
	АнглийскийАлфавит = "abcdefghigklmnoprstuvwxyz";
	ПозицияСимвола = Найти(АнглийскийАлфавит, НРег(Символ));
	Возврат ПозицияСимвола > 0;
КонецФункции

&НаСервереБезКонтекста
Функция ПереводНаСервере(Текст)
	Результат = "";
	ТекущееСлово = "";
	Для А = 1 По СтрДлина(Текст) Цикл
		Символ = Сред(Текст, А, 1);
		Если ЭтоАнглийскаяБуква(Символ) Тогда
			ТекущееСлово = ТекущееСлово + Символ;
		Иначе
			Если ТекущееСлово <> "" Тогда
				Результат = Результат + ИскатьПереводНаСервере(ТекущееСлово);
				ТекущееСлово = "";
			КонецЕсли;
			Результат = Результат + Символ;
		КонецЕсли;
	КонецЦикла;
	Если ТекущееСлово <> "" Тогда
		Результат = Результат + ИскатьПереводНаСервере(ТекущееСлово);
	КонецЕсли;
	Возврат Результат;
КонецФункции