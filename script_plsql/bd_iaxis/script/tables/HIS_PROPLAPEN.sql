--------------------------------------------------------
--  DDL for Table HIS_PROPLAPEN
--------------------------------------------------------

  CREATE TABLE "AXIS"."HIS_PROPLAPEN" 
   (	"SPRODUC" NUMBER(22,0), 
	"CCODPLA" NUMBER(22,0), 
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

   COMMENT ON COLUMN "AXIS"."HIS_PROPLAPEN"."SPRODUC" IS 'C�digo del producto';
   COMMENT ON COLUMN "AXIS"."HIS_PROPLAPEN"."CCODPLA" IS 'C�digo del plan';
   COMMENT ON COLUMN "AXIS"."HIS_PROPLAPEN"."CUSUALT" IS 'Usuario que crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_PROPLAPEN"."FALTA" IS 'Fecha en que se crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_PROPLAPEN"."CUSUMOD" IS 'Usuario que modifica crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_PROPLAPEN"."FMODIFI" IS 'Fecha en que se modifica el registro';
   COMMENT ON COLUMN "AXIS"."HIS_PROPLAPEN"."CUSUHIST" IS 'Usuario que realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_PROPLAPEN"."FCREAHIST" IS 'Fecha en que se realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_PROPLAPEN"."ACCION" IS 'Acci�n realizada';
   COMMENT ON TABLE "AXIS"."HIS_PROPLAPEN"  IS 'Hist�rico de la tabla PROPLAPEN';
  GRANT UPDATE ON "AXIS"."HIS_PROPLAPEN" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_PROPLAPEN" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HIS_PROPLAPEN" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HIS_PROPLAPEN" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_PROPLAPEN" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HIS_PROPLAPEN" TO "PROGRAMADORESCSI";
