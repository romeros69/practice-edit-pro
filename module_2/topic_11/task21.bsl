// модуль уроки
Процедура НовоеСобытие(События) Экспорт
	Год = 0;
	ВвестиЧисло(Год);
	ТекстСобытия = "";
	ВвестиСтроку(ТекстСобытия);
	События.Добавить(Год, ТекстСобытия);
КонецПроцедуры

Процедура ОтчиститьСписок(События) Экспорт
	Ответ = Вопрос("Вы точно хотите отчистить события?", РежимДиалогаВопрос.ДаНет);
	Если Ответ = КодВозвратаДиалога.Да Тогда
		События.Отчистить();
	КонецЕсли;
КонецПроцедуры

Процедура Сортировка(События) Экспорт
	События.СортироватьПоЗначению(НаправлениеСортировки.Возр);
КонецПроцедуры

Процедура ПолучитьСобытиеПоДате(События) Экспорт
	Год = 0;
	ВвестиЧисло(Год);
	Если События.НайтиПоЗначению(Год) = Неопределено Тогда
		ОткрытьЗначение("Такого события нет");
	Иначе
		Соб = "";
		Для Каждого Событие из События Цикл
			Если Год = Событие.Значение Тогда
				Соб = Соб + Символы.ПС + Строка(Событие.Значение) + " - " + Событие.Представление;
			КонецЕсли;
		КонецЦикла;
		ОткрытьЗначение(Соб);
	КонецЕсли;
	
КонецПроцедуры

// основной модуль
События = Новый СписокЗначений();
События.Добавить(1961, "ПЕрвый полет в космос");
События.Добавить(1961, "СССР провел испытание ядерного оружия");
События.Добавить(1961, "Начало строительства Берлинской стены");
События.Добавить(988, "Крещение Руси");

Пока Истина Цикл
	Текст = "";

	Для Каждого Событие Из События Цикл
		Текст = Текст + Символы.ПС + Строка(Событие.Значение) + " - " + Событие.Представление;
	КонецЦикла;

	Ответ = Вопрос(Текст + Символы.Пс + Символы.ПС + 
	"============================================"
	"1 - ввести новое событие"
	"2 - очистить список событий"
	"3 - сортировать события по году"
	"4 - вывести все события на определенную дату"
	"============================================"
	"Введите номер команды или нажмите отмена для выхода из книги"
	"1 - ввести новое событие", РежимДиалогаВопрос.ОКОтмена);

	Если Ответ = КодВозвратаДиалога.Отмена Тогда
		Прервать;
	ИначеЕсли Ответ = КодВозвратаДиалога.ОК Тогда
		Н = 0;
		ВвестиЧисло(Н);
		Если Н = 1 Тогда
			Уроки.НовоеСобытие(События);
		ИначеЕсли Н = 2 Тогда
			Уроки.ОтчиститьСписок(События);
		ИначеЕсли Н = 3 Тогда
			Уроки.Сортировка(События);
		ИначеЕсли Н = 4 Тогда
			Уроки.ПолучитьСобытиеПоДате(События);
		КонецЕсли;
	КонецЕсли;
КонецЦикла;