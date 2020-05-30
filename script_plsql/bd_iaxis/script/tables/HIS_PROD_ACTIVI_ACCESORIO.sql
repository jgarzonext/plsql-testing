--------------------------------------------------------
--  DDL for Table HIS_PROD_ACTIVI_ACCESORIO
--------------------------------------------------------

  CREATE TABLE "AXIS"."HIS_PROD_ACTIVI_ACCESORIO" 
   (	"SPRODUC" NUMBER(22,0), 
	"CACTIVI" NUMBER(22,0), 
	"CACCESORIO" VARCHAR2(10 BYTE), 
	"CTIPACC" VARCHAR2(8 BYTE), 
	"CASEGURABLE" NUMBER(22,0), 
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

   COMMENT ON COLUMN "AXIS"."HIS_PROD_ACTIVI_ACCESORIO"."SPRODUC" IS 'C�digo del producto';
   COMMENT ON COLUMN "AXIS"."HIS_PROD_ACTIVI_ACCESORIO"."CACTIVI" IS 'C�digo de la actividad';
   COMMENT ON COLUMN "AXIS"."HIS_PROD_ACTIVI_ACCESORIO"."CACCESORIO" IS 'C�digo del accesorio';
   COMMENT ON COLUMN "AXIS"."HIS_PROD_ACTIVI_ACCESORIO"."CTIPACC" IS 'C�digo del tipo de accesorio VF. 292';
   COMMENT ON COLUMN "AXIS"."HIS_PROD_ACTIVI_ACCESORIO"."CASEGURABLE" IS 'Indca si es asegurable 0-No 1-Si';
   COMMENT ON COLUMN "AXIS"."HIS_PROD_ACTIVI_ACCESORIO"."CUSUALT" IS 'Usuario que crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_PROD_ACTIVI_ACCESORIO"."FALTA" IS 'Fecha en que se crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_PROD_ACTIVI_ACCESORIO"."CUSUMOD" IS 'Usuario que modifica crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_PROD_ACTIVI_ACCESORIO"."FMODIFI" IS 'Fecha en que se modifica el registro';
   COMMENT ON COLUMN "AXIS"."HIS_PROD_ACTIVI_ACCESORIO"."CUSUHIST" IS 'Usuario que realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_PROD_ACTIVI_ACCESORIO"."FCREAHIST" IS 'Fecha en que se realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_PROD_ACTIVI_ACCESORIO"."ACCION" IS 'Acci�n realizada';
   COMMENT ON TABLE "AXIS"."HIS_PROD_ACTIVI_ACCESORIO"  IS 'Hist�rico de la tabla PROD_ACTIVI_ACCESORIO';
  GRANT UPDATE ON "AXIS"."HIS_PROD_ACTIVI_ACCESORIO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_PROD_ACTIVI_ACCESORIO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HIS_PROD_ACTIVI_ACCESORIO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HIS_PROD_ACTIVI_ACCESORIO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_PROD_ACTIVI_ACCESORIO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HIS_PROD_ACTIVI_ACCESORIO" TO "PROGRAMADORESCSI";
