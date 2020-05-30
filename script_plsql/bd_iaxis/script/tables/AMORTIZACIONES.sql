--------------------------------------------------------
--  DDL for Table AMORTIZACIONES
--------------------------------------------------------

  CREATE TABLE "AXIS"."AMORTIZACIONES" 
   (	"SSEGURO" NUMBER, 
	"PINTERES" NUMBER(4,2), 
	"CARENCIA" NUMBER, 
	"FEFECTO" DATE, 
	"PERIODOS" NUMBER(3,0), 
	"FRECUENCIA" NUMBER(3,0), 
	"CAPITAL" NUMBER, 
	"CTAPRES" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."AMORTIZACIONES"."CTAPRES" IS 'Cuenta de pr�stamo';
  GRANT UPDATE ON "AXIS"."AMORTIZACIONES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AMORTIZACIONES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."AMORTIZACIONES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."AMORTIZACIONES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AMORTIZACIONES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."AMORTIZACIONES" TO "PROGRAMADORESCSI";
