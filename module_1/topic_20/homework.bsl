Результат = Вопрос("Нажмите Да, чтобы вывести числа от 1 до 10, Нет - чтобы вывести числа от 10 до 100, ни в коем случае не нажимайте кнопку отмена", РежимДиалогаВопрос.ДаНетОтмена);
Рез = "";
Если Результат = КодВозвратаДиалога.Да Тогда
	Для Шаг = 1 по 10 Цикл
		Рез = Рез + Шаг + " ";
	КонецЦикла;
ИначеЕсли Результат = КодВозвратаДиалога.Нет Тогда
	Для Шаг = 10 по 100 Цикл
		Рез = Рез + Шаг + " ";
	КонецЦикла;
Иначе
	 Рез = "Мы же вас предупреждали, что нельзя нажимать отмену!";
КонецЕсли;
ОткрытьЗначение(Рез);