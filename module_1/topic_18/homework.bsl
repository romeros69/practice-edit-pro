гсч = Новый ГенераторСлучайныхЧисел(2014);
ап = Новый Массив(3);
ап[0] = гсч.СлучайноеЧисло(1, 1000);
ап[1] = гсч.СлучайноеЧисло(1, 1000);
ап[2] = гсч.СлучайноеЧисло(1, 1000);
Для о = 0 По 2 Цикл
	ап[о] = Pow(ап[о], 5);
	ап[о] = Sqrt(ап[о]);
	ап[о] = ап[о] / 3;
	ап[о] = Окр(ап[о], 2, РежимОкругления.Окр15как10);
	ап[о] = ап[о] * 0.25;
	ап[о] = Цел(ап[о]);
КонецЦикла;
Сообщить(ап[0] + ап[1] + ап[2]);