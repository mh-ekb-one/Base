﻿
Функция ПолучитьРольПользователя() Экспорт	
	
	Для каждого Строка из ПользователиИнформационнойБазы.ТекущийПользователь().Роли Цикл
		Роль = Строка.Имя;	
	КонецЦикла;
	Возврат Роль;	
КонецФункции

Функция ПолучитьТекущегоПользователя() Экспорт 
	Возврат ПользователиИнформационнойБазы.ТекущийПользователь();	
КонецФункции

Функция СведенияОПользователе() Экспорт
	СведенияРегистрация = ПолучитьТекущегоПользователя();
	Сведения = Справочники.Пользователи.НайтиПоНаименованию(СведенияРегистрация.Имя);
	
	Для каждого Строка из ПользователиИнформационнойБазы.ТекущийПользователь().Роли Цикл
		Роль = Строка.Имя	
	КонецЦикла;
	СведенияОПользователеДанные = Новый Структура;
	СведенияОПользователеДанные.Вставить("Логин", Сведения.Наименование);
	СведенияОПользователеДанные.Вставить("СсылкаНаСправочникНаставникСтажер", Сведения.НаставникСтажер);
	СведенияОПользователеДанные.Вставить("Роль", Роль);
	
	СведенияОПользователеДанные.Вставить("ДатаРождения", Сведения.НаставникСтажер.ДатаРождения);
	СведенияОПользователеДанные.Вставить("Имя", Сведения.НаставникСтажер.Имя);
	СведенияОПользователеДанные.Вставить("Фамилия", Сведения.НаставникСтажер.Фамилия);
	СведенияОПользователеДанные.Вставить("Отчество", Сведения.НаставникСтажер.Отчество);
	СведенияОПользователеДанные.Вставить("Пол", Сведения.НаставникСтажер.Пол);
	СведенияОПользователеДанные.Вставить("ТемпераментПоТесту", Сведения.НаставникСтажер.ТемпераментПоТесту);
	Попытка
		СведенияОПользователеДанные.Вставить("Профессия", Сведения.Профессия);
		СведенияОПользователеДанные.Вставить("Разряд", Сведения.Разряд);
	Исключение
	КонецПопытки;
	
	Возврат СведенияОПользователеДанные;
КонецФункции