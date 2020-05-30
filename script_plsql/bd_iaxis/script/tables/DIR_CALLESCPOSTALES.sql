--------------------------------------------------------
--  DDL for Table DIR_CALLESCPOSTALES
--------------------------------------------------------

  CREATE TABLE "AXIS"."DIR_CALLESCPOSTALES" 
   (	"IDCALLE" NUMBER(10,0), 
	"CPOSTAL" VARCHAR2(10 BYTE), 
	"NUMPINF" NUMBER(5,0), 
	"NPARINF" NUMBER(5,0), 
	"NIMPSUP" NUMBER(5,0), 
	"NPASSUP" NUMBER(5,0), 
	"CVALCCP" NUMBER(1,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DIR_CALLESCPOSTALES"."IDCALLE" IS 'Id Calle';
   COMMENT ON COLUMN "AXIS"."DIR_CALLESCPOSTALES"."CPOSTAL" IS 'Codigo Postal Calle';
   COMMENT ON COLUMN "AXIS"."DIR_CALLESCPOSTALES"."NPARINF" IS 'N�mero Par Inferior';
   COMMENT ON COLUMN "AXIS"."DIR_CALLESCPOSTALES"."NIMPSUP" IS 'N�mero Impar Superior';
   COMMENT ON COLUMN "AXIS"."DIR_CALLESCPOSTALES"."NPASSUP" IS 'N�mero Par Superior';
   COMMENT ON COLUMN "AXIS"."DIR_CALLESCPOSTALES"."CVALCCP" IS 'Calle-CP Validado';
   COMMENT ON TABLE "AXIS"."DIR_CALLESCPOSTALES"  IS 'Calles';
  GRANT UPDATE ON "AXIS"."DIR_CALLESCPOSTALES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DIR_CALLESCPOSTALES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DIR_CALLESCPOSTALES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DIR_CALLESCPOSTALES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DIR_CALLESCPOSTALES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DIR_CALLESCPOSTALES" TO "PROGRAMADORESCSI";
