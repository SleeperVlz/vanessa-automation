# language: ru

@IgnoreOn82Builds
@IgnoreOn836
@IgnoreOn839
@IgnoreOnOFBuilds
@IgnoreOnWeb




Функционал: Проверка удаления переменных



Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой






Сценарий: Проверка удаления переменных созданных в цикле
		
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиУдаленияПеременных2"
	
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient

	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
	И я перехожу к закладке с именем "ГруппаЗапускТестов"

	Тогда таблица "ДеревоТестов" стала равной:
		| 'Наименование'                                                                             | 'Статус'  |
		| 'ФичаДляПроверкиУдаленияПеременных2.feature'                                               | ''        |
		| 'ФичаДляПроверкиУдаленияПеременных2'                                                       | ''        |
		| 'ФичаДляПроверкиУдаленияПеременных2'                                                       | 'Success' |
		| 'И Я запоминаю значение выражения \'0\' в переменную "Итератор"'                           | 'Success' |
		| 'И я делаю 5 раз'                                                                          | 'Success' |
		| 'И Я запоминаю значение выражения \'$Итератор$+1\' в переменную "Итератор"'                | 'Success' |
		| 'И Я запоминаю значение выражения \'"Перем" + $Итератор$\' в переменную "НоваяПеременная"' | 'Success' |
		| 'И Я запоминаю значение выражения \'$Итератор$+100\' в переменную "$НоваяПеременная$"'     | 'Success' |





	
	И я нажимаю на кнопку с именем 'ПоказатьСкрытьТаблоПеременных'

	Если Версия платформы ">=" "8.3.12" Тогда
		Тогда таблица "ТаблоПеременных" стала равной:
			| 'Имя'                 | 'Значение' | 'Тип'    |
			| 'Контекст'            | ''         | ''       |
			| 'Итератор'            | '5'        | 'Число'  |
			| 'НоваяПеременная'     | 'Перем5'   | 'Строка' |
			| 'Перем1'              | '101'      | 'Число'  |
			| 'Перем2'              | '102'      | 'Число'  |
			| 'Перем3'              | '103'      | 'Число'  |
			| 'Перем4'              | '104'      | 'Число'  |
			| 'Перем5'              | '105'      | 'Число'  |
			| 'Контекст глобальный' | ''         | ''       |


	И я перехожу к закладке с именем "ГруппаСлужебная"

	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиУдаленияПеременных3"
	
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient

	Тогда таблица "ТаблоПеременных" стала равной:
		| 'Имя'                 | 'Значение' | 'Тип'   |
		| 'Контекст'            | ''         | ''      |
		| 'Итератор'            | '5'        | 'Число' |
		| 'Контекст глобальный' | ''         | ''      |




Сценарий: Проверка удаления переменных простая
		
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиУдаленияПеременных1"
	
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient

	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
	И я перехожу к закладке с именем "ГруппаЗапускТестов"

	Тогда таблица "ДеревоТестов" стала равной:
		| 'Наименование'                                                         | 'Статус'  |
		| 'ФичаДляПроверкиУдаленияПеременных1.feature'                           | ''        |
		| 'ФичаДляПроверкиУдаленияПеременных1'                                   | ''        |
		| 'ФичаДляПроверкиУдаленияПеременных1'                                   | 'Success' |
		| 'И я удаляю переменную \'ТакойПеременнойНет\''                         | 'Success' |
		| 'И Я запоминаю значение выражения \'1\' в переменную "ИмяПеременной1"' | 'Success' |
		| 'И Я запоминаю значение выражения \'2\' в переменную "ИмяПеременной2"' | 'Success' |
		| 'И я удаляю переменную \'ИмяПеременной1\''                             | 'Success' |
		| 'И я удаляю переменную \'$ИмяПеременной2$\''                           | 'Success' |




	
	И я нажимаю на кнопку с именем 'ПоказатьСкрытьТаблоПеременных'

	Тогда таблица "ТаблоПеременных" стала равной:
		| 'Имя'                 |
		| 'Контекст'            |
		| 'Контекст глобальный' |


