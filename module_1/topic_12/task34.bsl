Люди = Новый массив(3);
Для Шаг = 0 По 2 Цикл
	Люди[Шаг] = Новый Структура("Имя, Возраст");
	ВвестиСтроку(Люди[Шаг].Имя);
	ВвестиЧисло(Люди[Шаг].Возраст);
КонецЦикла;

ИмяСтаршего = Люди[0].Имя;
МаксВозраст = Люди[0].Возраст;

Для Шаг = 1 По 2 Цикл
	Если Люди[Шаг].Возраст > МаксВозраст Тогда
		МаксВозраст = Люди[Шаг].Возраст;
		ИмяСтаршего = Люди[Шаг].Имя;
	КонецЕсли
КонецЦикла;

ОткрытьЗначение(
	"Самый старший человек - " +
	ИмяСтаршего + ". Ему " +
	МаксВозраст + " лет."
);