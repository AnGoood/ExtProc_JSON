

&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	
	Объект.СвойствоСтрокаИмя      = "КлючСтрока";
	Объект.СвойствоСтрокаЗначение = "Кошка";
	
	Объект.СвойствоЧислоИмя      = "КлючЧисло";
	Объект.СвойствоЧислоЗначение = 123.45;
	
	Объект.СвойствоДатаИмя      = "КлючДата";
	Объект.СвойствоДатаЗначение = '20190801000000';	
	
	Объект.СвойствоБулевоИмя      = "КлючБулево";
	Объект.СвойствоБулевоЗначение = Истина;;
	
	Объект.СвойствоСтруктураИмя = "КлючСтруктура";
	
	СоставОчиститьНаСервере();
	
	НовСтрока = Объект.Состав.Добавить();
	
	НовСтрока.ПризнакОп = Истина;
	НовСтрока.НомерОп = "ПР001";
	НовСтрока.ДатаОп  = '20190801000000';
	НовСтрока.СуммаОп = 98765432; 
	
КонецПроцедуры

&НаКлиенте
Процедура СоставОчистить(Команда)
	СоставОчиститьНаСервере();
КонецПроцедуры

&НаСервере
Процедура СоставОчиститьНаСервере()
	Если Объект.Состав.Количество() > 0 Тогда
		Объект.Состав.Очистить();
	КонецЕсли;
	
КонецПроцедуры
