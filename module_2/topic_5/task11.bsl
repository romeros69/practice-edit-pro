
ДокументИсход = Новый ТекстовыйДокумент;
ДокументИсход.Прочитать("/Users/romeros/Documents/practika/practice-edit-pro/module_2/topic_5/out.txt");
Текст = ДокументИсход.ПолучитьТекст();

Дешифр = "";
Для Ш = 1 По СтрДлина(Текст) Цикл
	Код = КодСимвола(Сред(Текст, Ш, 1));
	Дешифр = Дешифр + Символ(Код - 3);
КонецЦикла;

ДокументШифр = Новый ТекстовыйДокумент;
ДокументШифр.УстановитьТекст(Дешифр);
ДокументШифр.Записать("/Users/romeros/Documents/practika/practice-edit-pro/module_2/topic_5/res.txt");