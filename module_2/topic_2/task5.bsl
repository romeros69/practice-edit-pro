ГСЧ = Новый ГенераторСлучайныхЧисел;
Оп = ГСЧ.СлучайноеЧисло(1, 15);
Рез = 1;
Для Шаг = 1 По Оп Цикл
	Рез = Рез * Шаг;
КонецЦикла;
Сообщить("Факториал числа " + Оп + " равен " + Рез);
