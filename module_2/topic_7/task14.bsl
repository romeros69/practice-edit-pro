В = "";
ВвестиСтроку(В);
Тук = 0;
Флаг = Истина;
Для Ш = 1 По СтрДлина(В) Цикл
	Тек = Сред(В, Ш, 1);
	Если Тек = "(" Тогда
		Тук = Тук + 1;
	Иначе
		Тук = Тук - 1;
	КонецЕсли;
	Если Тук < 0 Тогда
		Флаг = Ложь;
		Прервать;
	КонецЕсли;
КонецЦикла;
Если Тук <> 0 Тогда
	Флаг = Ложь;
КонецЕсли;
Если Флаг = Истина Тогда
	ОткрытьЗначение("Корректно");
Иначе
	ОткрытьЗначение("Не корректно");
КонецЕсли;