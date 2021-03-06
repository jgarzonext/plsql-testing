--------------------------------------------------------
--  DDL for Table HIS_DURPERIODOPROD
--------------------------------------------------------

  CREATE TABLE "AXIS"."HIS_DURPERIODOPROD" 
   (	"SPRODUC" NUMBER(22,0), 
	"FINICIO" DATE, 
	"FFIN" DATE, 
	"NDURPER" NUMBER(22,0), 
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

   COMMENT ON COLUMN "AXIS"."HIS_DURPERIODOPROD"."SPRODUC" IS 'Identificador del producto';
   COMMENT ON COLUMN "AXIS"."HIS_DURPERIODOPROD"."FINICIO" IS 'Fecha de entrada en vigor';
   COMMENT ON COLUMN "AXIS"."HIS_DURPERIODOPROD"."FFIN" IS 'Fecha de fin de vigor';
   COMMENT ON COLUMN "AXIS"."HIS_DURPERIODOPROD"."NDURPER" IS 'Duraci�n periodo inter�s garantizado (en a�os)';
   COMMENT ON COLUMN "AXIS"."HIS_DURPERIODOPROD"."CUSUALT" IS 'Usuario que crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_DURPERIODOPROD"."FALTA" IS 'Fecha en que se crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_DURPERIODOPROD"."CUSUMOD" IS 'Usuario que modifica crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_DURPERIODOPROD"."FMODIFI" IS 'Fecha en que se modifica el registro';
   COMMENT ON COLUMN "AXIS"."HIS_DURPERIODOPROD"."CUSUHIST" IS 'Usuario que realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_DURPERIODOPROD"."FCREAHIST" IS 'Fecha en que se realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_DURPERIODOPROD"."ACCION" IS 'Acci�n realizada';
   COMMENT ON TABLE "AXIS"."HIS_DURPERIODOPROD"  IS 'Hist�rico de la tabla DURPERIODOPROD';
  GRANT UPDATE ON "AXIS"."HIS_DURPERIODOPROD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_DURPERIODOPROD" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HIS_DURPERIODOPROD" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HIS_DURPERIODOPROD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_DURPERIODOPROD" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HIS_DURPERIODOPROD" TO "PROGRAMADORESCSI";
