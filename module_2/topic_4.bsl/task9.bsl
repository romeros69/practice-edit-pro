Стр = "";
ВвестиСтроку(Стр);
Стр = НРег(Стр);

Словарь = Новый Массив;
Слов = "";
Флаг = Ложь;

Для Шаг = 1 По СтрДлина(Стр) Цикл
	Если Сред(Стр, Шаг, 1) = " " ИЛИ СтрНайти(",.!?", Сред(Стр, Шаг, 1)) > 0 Тогда
		Если Флаг = Истина Тогда
			Словарь.Добавить(Слов);
			Слов = "";
		КонецЕсли;
		Флаг = Ложь;
	Иначе
		Флаг = Истина;
		Слов = Слов + Сред(Стр, Шаг, 1);
	КонецЕсли;
КонецЦикла;

Если Флаг = Истина Тогда
	Словарь.Добавить(Слов);
КонецЕсли;

Для Шаг1 = 0 По Словарь.Количество() - 2 Цикл
	Для Шаг2 = 0 По Словарь.Количество() - 2 - Шаг1 Цикл
		Если СтрДлина(Словарь[Шаг2]) > СтрДлина(Словарь[Шаг2 + 1]) Тогда
			Стакан = Словарь[Шаг2 + 1];
			Словарь[Шаг2 + 1] = Словарь[Шаг2];
			Словарь[Шаг2] = Стакан;
		КонецЕсли;
	КонецЦикла;	
КонецЦикла;
Рез = "";
Для Шаг = 0 По Словарь.Количество() - 1 Цикл 
	Рез = Рез + Словарь[Шаг] + Символы.ПС;
КонецЦикла;
ОткрытьЗначение(Рез);