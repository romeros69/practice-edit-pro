КолвоСек = 0;
ВвестиЧисло(КолвоСек);
ПолныйЦиклВСекундах = (3 * 60) + 60 + (2 * 60);
ПослеОтбросаЦиклов = КолвоСек % ПолныйЦиклВСекундах;
Если ПослеОтбросаЦиклов >= 0 И ПослеОтбросаЦиклов < (3 * 60) Тогда
	ОткрытьЗначение("Горит зеленый");
ИначеЕсли ПослеОтбросаЦиклов >= (3*60) И ПослеОтбросаЦиклов < (4 * 60) Тогда
	ОткрытьЗначение("Горит желтый");
Иначе
	ОткрытьЗначение("Горит красный");
КонецЕсли;