--------------------------------------------------------
--  DDL for Table PRESTAMOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."PRESTAMOS" 
   (	"CTAPRES" VARCHAR2(50 BYTE), 
	"ICAPINI" NUMBER, 
	"CTIPAMORT" NUMBER(2,0), 
	"CTIPINT" NUMBER(2,0), 
	"CTIPPRES" NUMBER(3,0), 
	"FALTA" DATE, 
	"FBAJA" DATE, 
	"FCARPRO" DATE, 
	"ILIMITE" NUMBER, 
	"CESTADO" NUMBER(2,0), 
	"ITASA" NUMBER(5,2), 
	"CTIPBAN" NUMBER(3,0), 
	"CBANCAR" VARCHAR2(34 BYTE), 
	"CFORPAG" NUMBER(2,0), 
	"FCONTAB" DATE, 
	"ICAPINI_MONCIA" NUMBER, 
	"FCAMBIO" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PRESTAMOS"."CTAPRES" IS 'C�digo del pr�stamo';
   COMMENT ON COLUMN "AXIS"."PRESTAMOS"."ICAPINI" IS 'Capital inicial del pr�stamo';
   COMMENT ON COLUMN "AXIS"."PRESTAMOS"."CTIPAMORT" IS 'Tipo de amortizaci�n (valor fijo 710)';
   COMMENT ON COLUMN "AXIS"."PRESTAMOS"."CTIPINT" IS 'Tipo de inter�s (valor fijo 711)';
   COMMENT ON COLUMN "AXIS"."PRESTAMOS"."CTIPPRES" IS 'Tipo de pr�stamo (valor fijo 712)';
   COMMENT ON COLUMN "AXIS"."PRESTAMOS"."FALTA" IS 'Fecha de alta del pr�stamo';
   COMMENT ON COLUMN "AXIS"."PRESTAMOS"."FBAJA" IS 'Fecha de baja del pr�stamo';
   COMMENT ON COLUMN "AXIS"."PRESTAMOS"."FCARPRO" IS 'Fecha de cartera';
   COMMENT ON COLUMN "AXIS"."PRESTAMOS"."ILIMITE" IS 'Importe l�mite  en la cuenta';
   COMMENT ON COLUMN "AXIS"."PRESTAMOS"."CESTADO" IS 'Estado del pr�stamo (VF. 1058)';
   COMMENT ON COLUMN "AXIS"."PRESTAMOS"."ITASA" IS '% de intereses del pr�stamo';
   COMMENT ON COLUMN "AXIS"."PRESTAMOS"."CTIPBAN" IS 'Tipo de cuenta (IBAN o Cuenta Bancaria). [tabla maestra: TIPOS_CUENTA]';
   COMMENT ON COLUMN "AXIS"."PRESTAMOS"."CBANCAR" IS 'C�digo IBAN o de Cuenta Bancaria';
   COMMENT ON COLUMN "AXIS"."PRESTAMOS"."CFORPAG" IS 'Medio por el que se le abonara el prestamos al tomador';
   COMMENT ON COLUMN "AXIS"."PRESTAMOS"."FCONTAB" IS 'Fecha de Contabilidad';
   COMMENT ON COLUMN "AXIS"."PRESTAMOS"."ICAPINI_MONCIA" IS 'Capital inicial del pr�stamo (Moneda Cia)';
   COMMENT ON COLUMN "AXIS"."PRESTAMOS"."FCAMBIO" IS 'Fecha Cambio';
   COMMENT ON TABLE "AXIS"."PRESTAMOS"  IS 'Pr�stamos';
  GRANT UPDATE ON "AXIS"."PRESTAMOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PRESTAMOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PRESTAMOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PRESTAMOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PRESTAMOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PRESTAMOS" TO "PROGRAMADORESCSI";