Разделитель = " ";
В = "";
ВвестиСтроку(В);
Строки = СтрЗаменить(В, Разделитель, Символы.ПС);
Рез = СтрПолучитьСтроку(Строки, 1) + " " + Сред(СтрПолучитьСтроку(Строки, 2), 1, 1) + ". " +  Сред(СтрПолучитьСтроку(Строки, 3), 1, 1) + ".";
ОткрытьЗначение(Рез);
	