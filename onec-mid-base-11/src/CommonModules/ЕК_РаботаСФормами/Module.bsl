// Контеева Е., Нетология, 12.06.2023, создан общий модуль для добавления в форму выбранных документов реквизита Контактное лицо (контрагента){
 
 
 # Область ПрограммныйИнтерфейс
 
 Процедура ДополнитьФорму (Форма) Экспорт  
// Контеева Е., Нетология, 12.06.2023, создан общий модуль для добавления в форму выбранных документов реквизита Контактное лицо (контрагента){   

//выбор расположения реквизита в зависимости от документа	 
	 ИмяФормы = Форма.ИмяФормы;
	 
	 Если ИмяФормы = "Документ.ЗаказПокупателя.Форма.ФормаДокумента" Тогда 
		 ДобавитьПолеКонтактноеЛицоВГруппаШапкаПраво (Форма);
	 ИначеЕсли ИмяФормы = "Документ.ПоступлениеТоваровУслуг.Форма.ФормаДокумента" Тогда  		
		 ДобавитьПолеКонтактноеЛицоВГруппаШапкаПраво (Форма); 
	 ИначеЕсли ИмяФормы = "Документ.РеализацияТоваровУслуг.Форма.ФормаДокумента" Тогда  		
		 ДобавитьПолеКонтактноеЛицоВГруппаШапкаПраво(Форма); 
	 ИначеЕсли ИмяФормы = "Документ.ОплатаОтПокупателя.Форма.ФормаДокумента" Тогда  		
		 ВставитьПолеКонтактноеЛицоНаФормуПередСуммаДокумента (Форма); 
	 ИначеЕсли ИмяФормы = "Документ.ОплатаПоставщику.Форма.ФормаДокумента" Тогда  		
		 ВставитьПолеКонтактноеЛицоНаФормуПередСуммаДокумента (Форма);    
	 КонецЕсли; 
	 
 // } Контеева Е., Нетология, 12.06.2023, создан общий модуль для добавления в форму выбранных документов реквизита Контактное лицо (контрагента)
 
 КонецПроцедуры  
 
 # КонецОбласти 
 
 # Область СлужебныеПроцедурыИФункции
 
 Процедура ДобавитьПолеКонтактноеЛицоВГруппаШапкаПраво (Форма) 
// Контеева Е., Нетология, 12.06.2023, создан общий модуль для добавления в форму выбранных документов реквизита Контактное лицо (контрагента){   
	 
	 ПолеВвода = Форма.Элементы.Добавить ("КонтактноеЛицо", Тип("ПолеФормы"), Форма.Элементы.ГруппаШапкаПраво);
	 ПолеВвода.Вид = ВидПоляФормы.ПолеВвода;
	 ПолеВвода.ПутьКДанным = "Объект.ЕК_КонтактноеЛицо";

	  // } Контеева Е., Нетология, 12.06.2023, создан общий модуль для добавления в форму выбранных документов реквизита Контактное лицо (контрагента)
 КонецПроцедуры  
 
 Процедура ВставитьПолеКонтактноеЛицоНаФормуПередСуммаДокумента (Форма) 
// Контеева Е., Нетология, 12.06.2023, создан общий модуль для добавления в форму выбранных документов реквизита Контактное лицо (контрагента){   
	 
	 ПолеВвода = Форма.Элементы.Вставить ("КонтактноеЛицо", Тип("ПолеФормы"), , Форма.Элементы.СуммаДокумента);
	 ПолеВвода.Вид = ВидПоляФормы.ПолеВвода;
	 ПолеВвода.ПутьКДанным = "Объект.ЕК_КонтактноеЛицо";
 // } Контеева Е., Нетология, 12.06.2023, создан общий модуль для добавления в форму выбранных документов реквизита Контактное лицо (контрагента)	 
 КонецПроцедуры 
 
# КонецОбласти 
 
 // } Контеева Е., Нетология, 12.06.2023, создан общий модуль для добавления в форму выбранных документов реквизита Контактное лицо (контрагента)