/* Создание базы данных, установка диалекта и набора символов по-умолчанию */
set sql dialect 3;
set names WIN1251;
create database 'D:\db\car_base.fdb'
user 'SYSDBA' password 'masterkey'
default character set WIN1251;

connect 'D:\db\car_base.fdb'
user 'SYSDBA' password 'masterkey';

/* Создание доменов */
CREATE DOMAIN D_DATE AS DATE;
CREATE DOMAIN D_INTEGER AS INTEGER;
CREATE DOMAIN D_CHAR1 AS CHAR(1);
CREATE DOMAIN D_CHAR2 AS CHAR(2);
CREATE DOMAIN D_CHAR3 AS CHAR(3);
CREATE DOMAIN D_CHAR4 AS CHAR(4);
CREATE DOMAIN D_CHAR6 AS CHAR(6);
CREATE DOMAIN D_CHAR8 AS CHAR(8);
CREATE DOMAIN D_DECIMAL AS DECIMAL(8,2);
CREATE DOMAIN D_CHAR15 AS VARCHAR(15) COLLATE PXW_CYRL;
CREATE DOMAIN D_CHAR20 AS VARCHAR(20) COLLATE PXW_CYRL;
CREATE DOMAIN D_CHAR25 AS VARCHAR(25) COLLATE PXW_CYRL;
CREATE DOMAIN D_CHAR30 AS VARCHAR(30) COLLATE PXW_CYRL;
CREATE DOMAIN D_CHAR35 AS VARCHAR(35) COLLATE PXW_CYRL;
CREATE DOMAIN D_CHAR40 AS VARCHAR(40) COLLATE PXW_CYRL;
CREATE DOMAIN D_CHAR50 AS VARCHAR(50) COLLATE PXW_CYRL;
CREATE DOMAIN D_CHAR60 AS VARCHAR(60) COLLATE PXW_CYRL;
CREATE DOMAIN D_CHAR110 AS VARCHAR(110) COLLATE PXW_CYRL;
CREATE DOMAIN D_CHAR120 AS VARCHAR(120) COLLATE PXW_CYRL;
CREATE DOMAIN D_CHAR1000 AS VARCHAR(1000) COLLATE PXW_CYRL;
CREATE DOMAIN D_BLOB AS BLOB SUB_TYPE 1 SEGMENT SIZE 400;

/* Создание таблиц и определение первичных ключей */
CREATE TABLE "country" (
    "cod" D_INTEGER NOT NULL,
    "name" D_CHAR30);

ALTER TABLE "country"
ADD CONSTRAINT "PK_country"
PRIMARY KEY ("cod");

CREATE TABLE "brend" (
    "cod" D_INTEGER NOT NULL,
    "name" D_CHAR30,
    "cod_country" D_INTEGER);

ALTER TABLE "brend"
ADD CONSTRAINT "PK_brend"
PRIMARY KEY ("cod");

CREATE TABLE "model" (
    "cod" D_INTEGER NOT NULL,
    "name" D_CHAR30,
    "doors" D_INTEGER,
    "cod_body" D_INTEGER,
    "date_manuf" D_INTEGER,
    "cod_brend" D_INTEGER);

ALTER TABLE "model"
ADD CONSTRAINT "PK_model"
PRIMARY KEY ("cod");

CREATE TABLE "body" (
    "cod" D_INTEGER NOT NULL,
    "name" D_CHAR20);

ALTER TABLE "body"
ADD CONSTRAINT "PK_body"
PRIMARY KEY ("cod");

CREATE TABLE "privod" (
    "cod" D_INTEGER NOT NULL,
    "name" D_CHAR30);

ALTER TABLE "privod"
ADD CONSTRAINT "PK_privod"
PRIMARY KEY ("cod");

CREATE TABLE "equipment" (
    "cod" D_INTEGER NOT NULL,
    "cod_model" D_INTEGER,
    "name" D_CHAR30,
    "cod_engine" D_INTEGER,
    "v_engine" D_DECIMAL,
    "cod_gearbox" D_INTEGER,
    "n_airbag" D_INTEGER,
    "n_seats" D_INTEGER,
    "cod_privod" D_INTEGER,
    "engine_pw" D_INTEGER,
    "fuel_con" D_DECIMAL,
    "n_gearbox" D_INTEGER,
    "price" D_INTEGER);

ALTER TABLE "equipment"
ADD CONSTRAINT "PK_equipment"
PRIMARY KEY ("cod");

CREATE TABLE "engine" (
    "cod" D_INTEGER NOT NULL,
    "name" D_CHAR30);

ALTER TABLE "engine"
ADD CONSTRAINT "PK_engine"
PRIMARY KEY ("cod");

CREATE TABLE "gearbox" (
    "cod" D_INTEGER NOT NULL,
    "name" D_CHAR30);

ALTER TABLE "gearbox"
ADD CONSTRAINT "PK_gearbox"
PRIMARY KEY ("cod");

CREATE TABLE "add_options" (
    "cod" D_INTEGER NOT NULL,
    "name" D_CHAR40,
    "price" D_INTEGER);

ALTER TABLE "add_options"
ADD CONSTRAINT "PK_add_options"
PRIMARY KEY ("cod");

CREATE TABLE "discount" (
    "cod" D_INTEGER NOT NULL,
    "cod_equipment" D_INTEGER,
    "discount" D_DECIMAL,
    "date_begin" D_DATE,
    "date_end" D_DATE);

ALTER TABLE "discount"
ADD CONSTRAINT "PK_discount"
PRIMARY KEY ("cod");

CREATE TABLE "client" (
    "cod" D_INTEGER NOT NULL,
    "name1" D_CHAR30,
    "name2" D_CHAR30,
    "name3" D_CHAR30);

ALTER TABLE "client"
ADD CONSTRAINT "PK_client"
PRIMARY KEY ("cod");

CREATE TABLE "deal" (
    "cod" D_INTEGER NOT NULL,
    "cod_client" D_INTEGER,
    "cod_equipment" D_INTEGER,
    "date" D_DATE);

ALTER TABLE "deal"
ADD CONSTRAINT "PK_deal"
PRIMARY KEY ("cod");

CREATE TABLE "deal_options" (
    "cod" D_INTEGER NOT NULL,
    "cod_deal" D_INTEGER,
    "cod_addopt" D_INTEGER);

ALTER TABLE "deal_options"
ADD CONSTRAINT "PK_deal_options"
PRIMARY KEY ("cod");

CREATE TABLE "guarantee" (
    "cod" D_INTEGER NOT NULL,
    "cod_deal" INTEGER,
    "date" D_DATE,
    "cod_crash" D_INTEGER);

ALTER TABLE "guarantee"
ADD CONSTRAINT "PK_guarantee"
PRIMARY KEY ("cod");

CREATE TABLE "crash" (
    "cod" D_INTEGER NOT NULL,
    "name" D_CHAR30);

ALTER TABLE "crash"
ADD CONSTRAINT "PK_crash"
PRIMARY KEY ("cod");

/* Внешние ключи */

ALTER TABLE "brend"
ADD CONSTRAINT "FK_brend_1"
FOREIGN KEY ("cod_country")
REFERENCES "country"("cod")
ON DELETE SET NULL
ON UPDATE CASCADE;

ALTER TABLE "deal"
ADD CONSTRAINT "FK_deal_1"
FOREIGN KEY ("cod_client")
REFERENCES "client"("cod")
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE "deal_options"
ADD CONSTRAINT "FK_deal_options_1"
FOREIGN KEY ("cod_deal")
REFERENCES "deal"("cod")
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE "deal_options"
ADD CONSTRAINT "FK_deal_options_2"
FOREIGN KEY ("cod_addopt")
REFERENCES "add_options"("cod")
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE "discount"
ADD CONSTRAINT "FK_discount_1"
FOREIGN KEY ("cod_equipment")
REFERENCES "equipment"("cod")
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE "equipment"
ADD CONSTRAINT "FK_equipment_1"
FOREIGN KEY ("cod_model")
REFERENCES "model"("cod")
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE "equipment"
ADD CONSTRAINT "FK_equipment_2"
FOREIGN KEY ("cod_engine")
REFERENCES "engine"("cod")
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE "equipment"
ADD CONSTRAINT "FK_equipment_3"
FOREIGN KEY ("cod_gearbox")
REFERENCES "gearbox"("cod")
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE "equipment"
ADD CONSTRAINT "FK_equipment_4"
FOREIGN KEY ("cod_privod")
REFERENCES "privod"("cod")
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE "guarantee"
ADD CONSTRAINT "FK_guarantee_1"
FOREIGN KEY ("cod_deal")
REFERENCES "deal"("cod")
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE "guarantee"
ADD CONSTRAINT "FK_guarantee_2"
FOREIGN KEY ("cod_crash")
REFERENCES "crash"("cod")
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE "model"
ADD CONSTRAINT "FK_model_1"
FOREIGN KEY ("cod_body")
REFERENCES "body"("cod")
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE "model"
ADD CONSTRAINT "FK_model_2"
FOREIGN KEY ("cod_brend")
REFERENCES "brend"("cod")
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE "deal"
ADD CONSTRAINT "FK_deal_2"
FOREIGN KEY ("cod_equipment")
REFERENCES "equipment"("cod")
ON DELETE CASCADE
ON UPDATE CASCADE;

commit;
exit;