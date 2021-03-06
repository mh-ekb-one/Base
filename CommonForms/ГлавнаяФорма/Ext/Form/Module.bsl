﻿
&НаКлиенте
Процедура ПриОткрытии(Отказ)
	ПриОткрытииНаСервере();
КонецПроцедуры

&НаСервере
Процедура ПриОткрытииНаСервере()
	СведенияОпользователе = МодульРаботыСПользователями.СведенияОПользователе();
	
	Логин = СведенияОпользователе.Логин;
	СсылкаНаСправочникНаставникСтажер = СведенияОпользователе.СсылкаНаСправочникНаставникСтажер;
	Роль = СведенияОпользователе.Роль;
	
	ДатаРождения = СведенияОпользователе.ДатаРождения;
	Имя = СведенияОпользователе.Имя;
	Фамилия = СведенияОпользователе.Фамилия;
	Отчество = СведенияОпользователе.Отчество;
	Пол = СведенияОпользователе.Пол;
	ТемпераментПоТесту = СведенияОпользователе.ТемпераментПоТесту;
	
	Если Роль = Перечисления.Роли.Наставник Тогда
		Профессия = СведенияОпользователе.Профессия;
		Разряд = СведенияОпользователе.Разряд;
	Иначе
		Элементы.Профессия.Видимость = Ложь;
		Элементы.Разряд.Видимость = Ложь;
	КонецЕсли;
	
	Элементы.ЧьяФорма.Заголовок = "Форма " + Роль;
	
	Если ПустаяСтрока(ТемпераментПоТесту) Тогда
		Элементы.ПройтиТест.Видимость = Истина;
	КонецЕсли;
КонецПроцедуры

&НаКлиенте
Процедура ПройтиТест(Команда)
	ПройтиТестНаСервере();
КонецПроцедуры

&НаСервере
Процедура ПройтиТестНаСервере()
	// Вставить содержимое обработчика
КонецПроцедуры


