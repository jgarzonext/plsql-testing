--------------------------------------------------------
--  DDL for Table HIS_INTERTECPROD
--------------------------------------------------------

  CREATE TABLE "AXIS"."HIS_INTERTECPROD" 
   (	"SPRODUC" NUMBER(22,0), 
	"NCODINT" NUMBER(22,0), 
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

   COMMENT ON COLUMN "AXIS"."HIS_INTERTECPROD"."SPRODUC" IS 'C�digo del Producto';
   COMMENT ON COLUMN "AXIS"."HIS_INTERTECPROD"."NCODINT" IS 'C�digo del Inter�s T�cnico';
   COMMENT ON COLUMN "AXIS"."HIS_INTERTECPROD"."CUSUALT" IS 'Usuario que crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_INTERTECPROD"."FALTA" IS 'Fecha en que se crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_INTERTECPROD"."CUSUMOD" IS 'Usuario que modifica crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_INTERTECPROD"."FMODIFI" IS 'Fecha en que se modifica el registro';
   COMMENT ON COLUMN "AXIS"."HIS_INTERTECPROD"."CUSUHIST" IS 'Usuario que realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_INTERTECPROD"."FCREAHIST" IS 'Fecha en que se realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_INTERTECPROD"."ACCION" IS 'Acci�n realizada';
   COMMENT ON TABLE "AXIS"."HIS_INTERTECPROD"  IS 'Hist�rico de la tabla INTERTECPROD';
  GRANT UPDATE ON "AXIS"."HIS_INTERTECPROD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_INTERTECPROD" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HIS_INTERTECPROD" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HIS_INTERTECPROD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_INTERTECPROD" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HIS_INTERTECPROD" TO "PROGRAMADORESCSI";
