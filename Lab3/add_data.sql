INSERT INTO "country" ("cod", "name") VALUES ('250', '�������');
INSERT INTO "country" ("cod", "name") VALUES ('276', '��������');
INSERT INTO "country" ("cod", "name") VALUES ('380', '������');
INSERT INTO "country" ("cod", "name") VALUES ('392', '������');

INSERT INTO "engine" ("cod", "name") VALUES (0, '������');
INSERT INTO "engine" ("cod", "name") VALUES (1, '��������� �������');

INSERT INTO "gearbox" ("cod", "name") VALUES (0, '������������');
INSERT INTO "gearbox" ("cod", "name") VALUES (1, '��������������');
INSERT INTO "gearbox" ("cod", "name") VALUES (2, '����������������');
INSERT INTO "gearbox" ("cod", "name") VALUES (3, '�����������');

INSERT INTO "privod" ("cod", "name") VALUES (0, '��������');
INSERT INTO "privod" ("cod", "name") VALUES (1, '������');
INSERT INTO "privod" ("cod", "name") VALUES (2, '������');

INSERT INTO "body" ("cod", "name") VALUES (0, '�����');
INSERT INTO "body" ("cod", "name") VALUES (1, '���������');
INSERT INTO "body" ("cod", "name") VALUES (2, '�������');
INSERT INTO "body" ("cod", "name") VALUES (3, '����');
INSERT INTO "body" ("cod", "name") VALUES (4, '�������');
INSERT INTO "body" ("cod", "name") VALUES (5, '���������');
INSERT INTO "body" ("cod", "name") VALUES (6, '�������');
INSERT INTO "body" ("cod", "name") VALUES (7, '�����������');

INSERT INTO "add_options" ("cod", "name", "price") VALUES (0, '�������������� ������� ��������', 67000);
INSERT INTO "add_options" ("cod", "name", "price") VALUES (1, '���� �������� ������������� 7X17', 43000);
INSERT INTO "add_options" ("cod", "name", "price") VALUES (2, '��������� ���������� �������', 15300);
INSERT INTO "add_options" ("cod", "name", "price") VALUES (3, '����������� ����� ������ "�������"', 1145);
INSERT INTO "add_options" ("cod", "name", "price") VALUES (4, '����������� ����� ������ "�������"', 1584);
INSERT INTO "add_options" ("cod", "name", "price") VALUES (5, '������ � ��������', 2757);

INSERT INTO "crash" ("cod", "name") VALUES (0, '���������');
INSERT INTO "crash" ("cod", "name") VALUES (1, '������� �������');
INSERT INTO "crash" ("cod", "name") VALUES (2, '��������� ��������');
INSERT INTO "crash" ("cod", "name") VALUES (3, '������������ � �������');
INSERT INTO "crash" ("cod", "name") VALUES (4, '��������');
INSERT INTO "crash" ("cod", "name") VALUES (5, '������ � ����');
INSERT INTO "crash" ("cod", "name") VALUES (6, '������� ����������');
INSERT INTO "crash" ("cod", "name") VALUES (7, '��������� �������');
INSERT INTO "crash" ("cod", "name") VALUES (8, '�����������');
INSERT INTO "crash" ("cod", "name") VALUES (9, '���������');
INSERT INTO "crash" ("cod", "name") VALUES (10, '������� ������');
INSERT INTO "crash" ("cod", "name") VALUES (11, '������� ���������');
INSERT INTO "crash" ("cod", "name") VALUES (12, '������� ��������� � ����-��');
INSERT INTO "crash" ("cod", "name") VALUES (13, '����������-���. �������');
INSERT INTO "crash" ("cod", "name") VALUES (14, '������� �������� � ����������');

INSERT INTO "guarantee" ("cod", "cod_deal", "date", "cod_crash") VALUES (0, 0, '10-DEC-2014', 1);d", "name") VALUES (14, '������� �������� � ����������');

INSERT INTO "brend" ("cod", "name", "cod_country") VALUES (0, 'Mitsubishi', '392');

INSERT INTO "client" ("cod", "name1", "name2", "name3") VALUES (2, '��������', '��������', '���������');
INSERT INTO "client" ("cod", "name1", "name2", "name3") VALUES (1, '������', '����', '��������');
INSERT INTO "client" ("cod", "name1", "name2", "name3") VALUES (0, '������', '����', '��������');

INSERT INTO "model" ("cod", "name", "doors", "cod_body", "date_manuf", "cod_brend") VALUES (0, 'Lancer Evolution', 4, 0, 2008, 0);
INSERT INTO "model" ("cod", "name", "doors", "cod_body", "date_manuf", "cod_brend") VALUES (1, 'Lancer', 4, 0, 2011, 0);
INSERT INTO "model" ("cod", "name", "doors", "cod_body", "date_manuf", "cod_brend") VALUES (2, 'Outlander', 5, 7, 2012, 0);

INSERT INTO "equipment" ("cod", "cod_model", "name", DATE_MANUF, "cod_engine", "v_engine", "cod_gearbox", "n_airbag", "n_seats", "cod_privod", "engine_pw", "fuel_con", "n_gearbox", "price") 
VALUES (0, 0, '2.0 MT Intense(S02)', 2013, 0, 2, 0, 7, 5, 2, 295, 10.2, 5, 1939000);

INSERT INTO "deal" ("cod", "cod_client", "cod_equipment", "date") VALUES (0, 0, 0, '5-DEC-2014');

INSERT INTO "deal_options" ("cod", "cod_deal", "cod_addopt") VALUES (0, 0, 2);

INSERT INTO "discount" ("cod", "cod_equipment", "discount", "date_begin", "date_end") VALUES (0, 0, 0.05, '1-DEC-2014', '19-DEC-2014');