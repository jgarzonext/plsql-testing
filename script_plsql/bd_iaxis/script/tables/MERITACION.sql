--------------------------------------------------------
--  DDL for Table MERITACION
--------------------------------------------------------

  CREATE TABLE "AXIS"."MERITACION" 
   (	"CEMPRES" NUMBER(2,0), 
	"FCIERRE" DATE, 
	"FCALCUL" DATE, 
	"SPROCES" NUMBER, 
	"NPOLIZA" NUMBER, 
	"NCERTIF" NUMBER, 
	"SSEGURO" NUMBER, 
	"CRAMO" NUMBER(8,0), 
	"CMODALI" NUMBER(2,0), 
	"CTIPSEG" NUMBER(2,0), 
	"CCOLECT" NUMBER(2,0), 
	"NRECIBO" NUMBER, 
	"NPERVEN" NUMBER(6,0), 
	"CCOMPANI" NUMBER(3,0), 
	"PRIMA_MERITADA" NUMBER, 
	"PRIMA_MERITADA_CIA" NUMBER, 
	"PRIMA_EXTORNADA" NUMBER, 
	"PRIMA_EXTORNADA_CIA" NUMBER, 
	"PRIMA_MERIT_ANUL" NUMBER, 
	"PRIMA_MERIT_ANUL_CIA" NUMBER, 
	"PRIMA_EXTORN_ANUL" NUMBER, 
	"PRIMA_EXTORN_ANUL_CIA" NUMBER, 
	"FEFECTO" DATE, 
	"CDIVISA" NUMBER(2,0), 
	"CSINEFEC" NUMBER(1,0), 
	"COMIS_MERITADA" NUMBER, 
	"COMIS_MERITADA_CIA" NUMBER, 
	"COMIS_EXTORNADA" NUMBER, 
	"COMIS_EXTORNADA_CIA" NUMBER, 
	"COMIS_MERIT_ANUL" NUMBER, 
	"COMIS_MERIT_ANUL_CIA" NUMBER, 
	"COMIS_EXTORN_ANUL" NUMBER, 
	"COMIS_EXTORN_ANUL_CIA" NUMBER, 
	"COMIS_MERITADA_AGEN" NUMBER, 
	"COMIS_MERITADA_CIA_AGEN" NUMBER, 
	"COMIS_EXTORNADA_AGEN" NUMBER, 
	"COMIS_EXTORNADA_CIA_AGEN" NUMBER, 
	"COMIS_MERIT_ANUL_AGEN" NUMBER, 
	"COMIS_MERIT_ANUL_CIA_AGEN" NUMBER, 
	"COMIS_EXTORN_ANUL_AGEN" NUMBER, 
	"COMIS_EXTORN_ANUL_CIA_AGEN" NUMBER, 
	"CZONA" NUMBER(6,0), 
	"COFICINA" NUMBER(6,0), 
	"FEMISIO" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MERITACION"."FEFECTO" IS 'Fecha de efecto del recibo ';
   COMMENT ON COLUMN "AXIS"."MERITACION"."CDIVISA" IS 'Moneda';
   COMMENT ON COLUMN "AXIS"."MERITACION"."CSINEFEC" IS 'Est� anulado sin efecto';
   COMMENT ON COLUMN "AXIS"."MERITACION"."CZONA" IS 'C�digo de zona';
   COMMENT ON COLUMN "AXIS"."MERITACION"."COFICINA" IS 'C�digo de oficina';
   COMMENT ON COLUMN "AXIS"."MERITACION"."FEMISIO" IS 'Fecha emisi�n del recibo';
  GRANT UPDATE ON "AXIS"."MERITACION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MERITACION" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MERITACION" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MERITACION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MERITACION" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MERITACION" TO "PROGRAMADORESCSI";
