CREATE TABLE SERVICE_REP (
    COD D_INTEGER NOT NULL,
    COD_DEAL D_INTEGER,
    "DAY" D_DATE,
    COD_CRUSH D_INTEGER,
    PRICE D_INTEGER);

ALTER TABLE SERVICE_REP
ADD CONSTRAINT PK_SERVICE_REP
PRIMARY KEY (COD);

ALTER TABLE SERVICE_REP
ADD CONSTRAINT FK_SERVICE_REP_1
FOREIGN KEY (COD_DEAL)
REFERENCES "deal"("cod")
ON DELETE SET NULL
ON UPDATE CASCADE;

ALTER TABLE SERVICE_REP
ADD CONSTRAINT FK_SERVICE_REP_2
FOREIGN KEY (COD_CRUSH)
REFERENCES "crash"("cod")
ON DELETE SET NULL
ON UPDATE CASCADE;

ALTER TABLE "equipment"
ADD COD_COUNTRY D_CHAR3;

ALTER TABLE "equipment"
ADD CONSTRAINT FK_EQUIPMENT_5
FOREIGN KEY (COD_COUNTRY)
REFERENCES "country"("cod")
ON DELETE SET NULL
ON UPDATE CASCADE;

ALTER TABLE "deal"
ADD PRICE D_INTEGER
COMMIT;