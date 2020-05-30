--------------------------------------------------------
--  DDL for Table PRESTAMOPAGO
--------------------------------------------------------

  CREATE TABLE "AXIS"."PRESTAMOPAGO" 
   (	"CTAPRES" VARCHAR2(50 BYTE), 
	"NPAGO" NUMBER(6,0), 
	"FEFECTO" DATE, 
	"ICAPITAL" NUMBER, 
	"FALTA" DATE, 
	"NREMESA" NUMBER, 
	"FREMESA" DATE, 
	"FCONTAB" DATE, 
	"ICAPITAL_MONPAGO" NUMBER, 
	"CMONPAGO" NUMBER(3,0), 
	"FCAMBIO" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PRESTAMOPAGO"."CTAPRES" IS 'Id. del pr�stamo';
   COMMENT ON COLUMN "AXIS"."PRESTAMOPAGO"."NPAGO" IS 'Id. del Pago';
   COMMENT ON COLUMN "AXIS"."PRESTAMOPAGO"."FEFECTO" IS 'Fecha de efecto del pr�stamo, a partir de qu� fecha se puede realizar el pago';
   COMMENT ON COLUMN "AXIS"."PRESTAMOPAGO"."ICAPITAL" IS 'Capital a remesar';
   COMMENT ON COLUMN "AXIS"."PRESTAMOPAGO"."FALTA" IS 'Fecha de alta del pr�stamo';
   COMMENT ON COLUMN "AXIS"."PRESTAMOPAGO"."NREMESA" IS 'N�mero de la remesa';
   COMMENT ON COLUMN "AXIS"."PRESTAMOPAGO"."FREMESA" IS 'Fecha en la que se realiza la remesa que paga el pr�stamo';
   COMMENT ON COLUMN "AXIS"."PRESTAMOPAGO"."FCONTAB" IS 'Fecha de Contabilidad';
   COMMENT ON COLUMN "AXIS"."PRESTAMOPAGO"."ICAPITAL_MONPAGO" IS 'Capital a remesar (Moneda Cia)';
   COMMENT ON COLUMN "AXIS"."PRESTAMOPAGO"."CMONPAGO" IS 'Moneda Pago';
   COMMENT ON COLUMN "AXIS"."PRESTAMOPAGO"."FCAMBIO" IS 'Fecha Cambio';
   COMMENT ON TABLE "AXIS"."PRESTAMOPAGO"  IS 'Pagos por pr�stamos';
  GRANT UPDATE ON "AXIS"."PRESTAMOPAGO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PRESTAMOPAGO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PRESTAMOPAGO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PRESTAMOPAGO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PRESTAMOPAGO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PRESTAMOPAGO" TO "PROGRAMADORESCSI";
