--------------------------------------------------------
--  DDL for Table HIS_REVALIPROD
--------------------------------------------------------

  CREATE TABLE "AXIS"."HIS_REVALIPROD" 
   (	"SPRODUC" NUMBER(22,0), 
	"CREVALI" NUMBER(22,0), 
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

   COMMENT ON COLUMN "AXIS"."HIS_REVALIPROD"."SPRODUC" IS 'Id. de producto';
   COMMENT ON COLUMN "AXIS"."HIS_REVALIPROD"."CREVALI" IS 'C�digo de revaloraci�n';
   COMMENT ON COLUMN "AXIS"."HIS_REVALIPROD"."CUSUALT" IS 'Usuario que crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_REVALIPROD"."FALTA" IS 'Fecha en que se crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_REVALIPROD"."CUSUMOD" IS 'Usuario que modifica crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_REVALIPROD"."FMODIFI" IS 'Fecha en que se modifica el registro';
   COMMENT ON COLUMN "AXIS"."HIS_REVALIPROD"."CUSUHIST" IS 'Usuario que realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_REVALIPROD"."FCREAHIST" IS 'Fecha en que se realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_REVALIPROD"."ACCION" IS 'Acci�n realizada';
   COMMENT ON TABLE "AXIS"."HIS_REVALIPROD"  IS 'Hist�rico de la tabla REVALIPROD';
  GRANT UPDATE ON "AXIS"."HIS_REVALIPROD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_REVALIPROD" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HIS_REVALIPROD" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HIS_REVALIPROD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_REVALIPROD" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HIS_REVALIPROD" TO "PROGRAMADORESCSI";
