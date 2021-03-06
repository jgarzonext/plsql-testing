--------------------------------------------------------
--  DDL for Table HIS_CUM_CUMGARAN
--------------------------------------------------------

  CREATE TABLE "AXIS"."HIS_CUM_CUMGARAN" 
   (	"CRAMO" NUMBER(22,0), 
	"CMODALI" NUMBER(22,0), 
	"CTIPSEG" NUMBER(22,0), 
	"CCOLECT" NUMBER(22,0), 
	"CACTIVI" NUMBER(22,0), 
	"CGARANT" NUMBER(22,0), 
	"CCUMULO" NUMBER(22,0), 
	"CUSUALT" VARCHAR2(30 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(30 BYTE), 
	"FMODIFI" DATE, 
	"CUSUHIST" VARCHAR2(20 BYTE), 
	"FCREAHIST" DATE, 
	"ACCION" VARCHAR2(2 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."HIS_CUM_CUMGARAN"."CRAMO" IS 'Codigo del Ramo';
   COMMENT ON COLUMN "AXIS"."HIS_CUM_CUMGARAN"."CMODALI" IS 'Codigo del Modalidad';
   COMMENT ON COLUMN "AXIS"."HIS_CUM_CUMGARAN"."CTIPSEG" IS 'Codigo del Tipo de Seguro';
   COMMENT ON COLUMN "AXIS"."HIS_CUM_CUMGARAN"."CCOLECT" IS 'Codigo del Colectivo';
   COMMENT ON COLUMN "AXIS"."HIS_CUM_CUMGARAN"."CACTIVI" IS 'Codigo de Actividad';
   COMMENT ON COLUMN "AXIS"."HIS_CUM_CUMGARAN"."CGARANT" IS 'Codigo de la garant�a';
   COMMENT ON COLUMN "AXIS"."HIS_CUM_CUMGARAN"."CCUMULO" IS 'Clave del C�mulo';
   COMMENT ON COLUMN "AXIS"."HIS_CUM_CUMGARAN"."CUSUALT" IS 'Usuario que crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_CUM_CUMGARAN"."FALTA" IS 'Fecha en que se crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_CUM_CUMGARAN"."CUSUMOD" IS 'Usuario que modifica crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_CUM_CUMGARAN"."FMODIFI" IS 'Fecha en que se modifica el registro';
   COMMENT ON COLUMN "AXIS"."HIS_CUM_CUMGARAN"."CUSUHIST" IS 'Usuario que realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_CUM_CUMGARAN"."FCREAHIST" IS 'Fecha en que se realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_CUM_CUMGARAN"."ACCION" IS 'Acci�n realizada';
   COMMENT ON TABLE "AXIS"."HIS_CUM_CUMGARAN"  IS 'Hist�rico de la tabla CUM_CUMGARAN';
  GRANT UPDATE ON "AXIS"."HIS_CUM_CUMGARAN" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_CUM_CUMGARAN" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HIS_CUM_CUMGARAN" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HIS_CUM_CUMGARAN" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_CUM_CUMGARAN" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HIS_CUM_CUMGARAN" TO "PROGRAMADORESCSI";
