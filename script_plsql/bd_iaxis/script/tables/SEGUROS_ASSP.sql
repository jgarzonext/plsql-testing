--------------------------------------------------------
--  DDL for Table SEGUROS_ASSP
--------------------------------------------------------

  CREATE TABLE "AXIS"."SEGUROS_ASSP" 
   (	"SSEGURO" NUMBER, 
	"SSEGVIN" NUMBER, 
	"IIMPPRE" NUMBER, 
	"FCARULT" DATE, 
	"PINTPRE" NUMBER(9,6), 
	"NCAREN" NUMBER(2,0), 
	"NNUMRECI" NUMBER(6,0), 
	"CFORAMOR" NUMBER(2,0), 
	"CTAPRES" VARCHAR2(50 BYTE), 
	"CTIPBAN" NUMBER(3,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 0 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."SEGUROS_ASSP"."SSEGVIN" IS 'Inter�s T�cnico';
   COMMENT ON COLUMN "AXIS"."SEGUROS_ASSP"."IIMPPRE" IS 'Importe pr�stamo';
   COMMENT ON COLUMN "AXIS"."SEGUROS_ASSP"."FCARULT" IS 'Feacha �ltima cartera';
   COMMENT ON COLUMN "AXIS"."SEGUROS_ASSP"."PINTPRE" IS 'Tipo inter�s pr�stamo';
   COMMENT ON COLUMN "AXIS"."SEGUROS_ASSP"."NCAREN" IS 'A�os de carencia';
   COMMENT ON COLUMN "AXIS"."SEGUROS_ASSP"."NNUMRECI" IS 'N�mero de recibos';
   COMMENT ON COLUMN "AXIS"."SEGUROS_ASSP"."CFORAMOR" IS 'Forma de amortizaci�n';
   COMMENT ON COLUMN "AXIS"."SEGUROS_ASSP"."CTAPRES" IS 'Cuenta del pr�stamo';
   COMMENT ON COLUMN "AXIS"."SEGUROS_ASSP"."CTIPBAN" IS 'Tipo de cuenta ( iban o cuenta bancaria). [tabla maestra: TIPOS_CUENTA]';
   COMMENT ON TABLE "AXIS"."SEGUROS_ASSP"  IS 'Migraci�n Seguros ASSP';
  GRANT UPDATE ON "AXIS"."SEGUROS_ASSP" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SEGUROS_ASSP" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SEGUROS_ASSP" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SEGUROS_ASSP" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SEGUROS_ASSP" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SEGUROS_ASSP" TO "PROGRAMADORESCSI";