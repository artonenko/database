INSERT INTO "country" ("cod", "name") VALUES ('250', 'Франция');
INSERT INTO "country" ("cod", "name") VALUES ('276', 'Германия');
INSERT INTO "country" ("cod", "name") VALUES ('380', 'Италия');
INSERT INTO "country" ("cod", "name") VALUES ('392', 'Япония');

INSERT INTO "engine" ("cod", "name") VALUES (0, 'Бензин');
INSERT INTO "engine" ("cod", "name") VALUES (1, 'Дизельное топливо');

INSERT INTO "gearbox" ("cod", "name") VALUES (0, 'Механическая');
INSERT INTO "gearbox" ("cod", "name") VALUES (1, 'Автоматическая');
INSERT INTO "gearbox" ("cod", "name") VALUES (2, 'Роботизированная');
INSERT INTO "gearbox" ("cod", "name") VALUES (3, 'Вариативная');

INSERT INTO "privod" ("cod", "name") VALUES (0, 'Передний');
INSERT INTO "privod" ("cod", "name") VALUES (1, 'Задний');
INSERT INTO "privod" ("cod", "name") VALUES (2, 'Полный');

INSERT INTO "body" ("cod", "name") VALUES (0, 'Седан');
INSERT INTO "body" ("cod", "name") VALUES (1, 'Универсал');
INSERT INTO "body" ("cod", "name") VALUES (2, 'Хетчбек');
INSERT INTO "body" ("cod", "name") VALUES (3, 'Купе');
INSERT INTO "body" ("cod", "name") VALUES (4, 'Лимузин');
INSERT INTO "body" ("cod", "name") VALUES (5, 'Кабриолет');
INSERT INTO "body" ("cod", "name") VALUES (6, 'Минивэн');
INSERT INTO "body" ("cod", "name") VALUES (7, 'Внедорожник');

INSERT INTO "add_options" ("cod", "name", "price") VALUES (0, 'МУЛЬТИМЕДИЙНАЯ СИСТЕМА МИЦУБИСИ', 67000);
INSERT INTO "add_options" ("cod", "name", "price") VALUES (1, 'ДИСК КОЛЕСНЫЙ ЛЕГКОСПЛАВНЫЙ 7X17', 43000);
INSERT INTO "add_options" ("cod", "name", "price") VALUES (2, 'ПРИЦЕПНОЕ УСТРОЙСТВО СЪЕМНОЕ', 15300);
INSERT INTO "add_options" ("cod", "name", "price") VALUES (3, 'ТЕКСТИЛЬНЫЕ КОВРЫ САЛОНА "Классик"', 1145);
INSERT INTO "add_options" ("cod", "name", "price") VALUES (4, 'ТЕКСТИЛЬНЫЕ КОВРЫ САЛОНА "Комфорт"', 1584);
INSERT INTO "add_options" ("cod", "name", "price") VALUES (5, 'ПОДДОН В БАГАЖНИК', 2757);

INSERT INTO "crash" ("cod", "name") VALUES (0, 'Сцепление');
INSERT INTO "crash" ("cod", "name") VALUES (1, 'Коробка передач');
INSERT INTO "crash" ("cod", "name") VALUES (2, 'Карданная передача');
INSERT INTO "crash" ("cod", "name") VALUES (3, 'Дифференциал и полуось');
INSERT INTO "crash" ("cod", "name") VALUES (4, 'Подвеска');
INSERT INTO "crash" ("cod", "name") VALUES (5, 'Колеса и шины');
INSERT INTO "crash" ("cod", "name") VALUES (6, 'Рулевое управление');
INSERT INTO "crash" ("cod", "name") VALUES (7, 'Тормозная система');
INSERT INTO "crash" ("cod", "name") VALUES (8, 'Аккумулятор');
INSERT INTO "crash" ("cod", "name") VALUES (9, 'Генератор');
INSERT INTO "crash" ("cod", "name") VALUES (10, 'Система спуска');
INSERT INTO "crash" ("cod", "name") VALUES (11, 'Система зажигания');
INSERT INTO "crash" ("cod", "name") VALUES (12, 'Приборы освещения и сигн-ии');
INSERT INTO "crash" ("cod", "name") VALUES (13, 'Контрольно-изм. приборы');
INSERT INTO "crash" ("cod", "name") VALUES (14, 'Системы обогрева и вентиляции');

INSERT INTO "guarantee" ("cod", "cod_deal", "date", "cod_crash") VALUES (0, 0, '10-DEC-2014', 1);d", "name") VALUES (14, 'Системы обогрева и вентиляции');

INSERT INTO "brend" ("cod", "name", "cod_country") VALUES (0, 'Mitsubishi', '392');

INSERT INTO "client" ("cod", "name1", "name2", "name3") VALUES (2, 'Антонова', 'Антонина', 'Антоновна');
INSERT INTO "client" ("cod", "name1", "name2", "name3") VALUES (1, 'Петров', 'Петр', 'Петрович');
INSERT INTO "client" ("cod", "name1", "name2", "name3") VALUES (0, 'Иванов', 'Иван', 'Иванович');

INSERT INTO "model" ("cod", "name", "doors", "cod_body", "date_manuf", "cod_brend") VALUES (0, 'Lancer Evolution', 4, 0, 2008, 0);
INSERT INTO "model" ("cod", "name", "doors", "cod_body", "date_manuf", "cod_brend") VALUES (1, 'Lancer', 4, 0, 2011, 0);
INSERT INTO "model" ("cod", "name", "doors", "cod_body", "date_manuf", "cod_brend") VALUES (2, 'Outlander', 5, 7, 2012, 0);

INSERT INTO "equipment" ("cod", "cod_model", "name", DATE_MANUF, "cod_engine", "v_engine", "cod_gearbox", "n_airbag", "n_seats", "cod_privod", "engine_pw", "fuel_con", "n_gearbox", "price") 
VALUES (0, 0, '2.0 MT Intense(S02)', 2013, 0, 2, 0, 7, 5, 2, 295, 10.2, 5, 1939000);

INSERT INTO "deal" ("cod", "cod_client", "cod_equipment", "date") VALUES (0, 0, 0, '5-DEC-2014');

INSERT INTO "deal_options" ("cod", "cod_deal", "cod_addopt") VALUES (0, 0, 2);

INSERT INTO "discount" ("cod", "cod_equipment", "discount", "date_begin", "date_end") VALUES (0, 0, 0.05, '1-DEC-2014', '19-DEC-2014');