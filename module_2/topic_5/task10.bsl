
ДокументИсход = Новый ТекстовыйДокумент;
ДокументИсход.Прочитать("/Users/romeros/Documents/practika/practice-edit-pro/module_2/topic_5/in.txt");
Текст = ДокументИсход.ПолучитьТекст();

Шифр = "";
Для Ш = 1 По СтрДлина(Текст) Цикл
	Код = КодСимвола(Сред(Текст, Ш, 1));
	Шифр = Шифр + Символ(Код + 3);
КонецЦикла;



ДокументШифр = Новый ТекстовыйДокумент;
ДокументШифр.УстановитьТекст(Шифр);
ДокументШифр.Записать("/Users/romeros/Documents/practika/practice-edit-pro/module_2/topic_5/out.txt");



