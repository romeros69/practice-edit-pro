// модуль уроки
Функция промежуток(ч1, ч2) Экспорт
	Строчка = ""
	Для к = ч1 По ч2 Цикл
		Строчка = Строчка + к + " "
	КонецЦикла;
	ОткрытьЗначение(Строчка);
КонецФункции

// основной модуль
ч1 = 0;
ч2 = 0;
ВвестиЧисло(ч1);
ВвестиЧисло(ч2);
Уроки.промежуток(ч1, ч2);