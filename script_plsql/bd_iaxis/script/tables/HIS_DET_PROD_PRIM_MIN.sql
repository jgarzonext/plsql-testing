--------------------------------------------------------
--  DDL for Table HIS_DET_PROD_PRIM_MIN
--------------------------------------------------------

  CREATE TABLE "AXIS"."HIS_DET_PROD_PRIM_MIN" 
   (	"SPRODUC" NUMBER(22,0), 
	"CACTIVI" NUMBER(22,0), 
	"CNIVEL" NUMBER(22,0), 
	"CPOSICION" NUMBER(22,0), 
	"FFECINI" DATE, 
	"NORDEN" NUMBER(22,0), 
	"IDPM" NUMBER(22,0), 
	"FALTA" DATE, 
	"CUSUALT" VARCHAR2(32 BYTE), 
	"FMODIFI" DATE, 
	"CUSUMOD" VARCHAR2(32 BYTE), 
	"CUSUHIST" VARCHAR2(20 BYTE), 
	"FCREAHIST" DATE, 
	"ACCION" VARCHAR2(2 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."HIS_DET_PROD_PRIM_MIN"."SPRODUC" IS 'C�digo del producto';
   COMMENT ON COLUMN "AXIS"."HIS_DET_PROD_PRIM_MIN"."CACTIVI" IS 'Actividad';
   COMMENT ON COLUMN "AXIS"."HIS_DET_PROD_PRIM_MIN"."CNIVEL" IS 'Nivel Aplicaci�n Prima M�nima (VF 1072)';
   COMMENT ON COLUMN "AXIS"."HIS_DET_PROD_PRIM_MIN"."CPOSICION" IS 'Posici�n Aplicaci�n Prima M�nima (VF 1073)';
   COMMENT ON COLUMN "AXIS"."HIS_DET_PROD_PRIM_MIN"."FFECINI" IS 'Fecha Inicio';
   COMMENT ON COLUMN "AXIS"."HIS_DET_PROD_PRIM_MIN"."NORDEN" IS 'Orden de ejecuci�n';
   COMMENT ON COLUMN "AXIS"."HIS_DET_PROD_PRIM_MIN"."IDPM" IS 'Identificador de prima m�nima';
   COMMENT ON COLUMN "AXIS"."HIS_DET_PROD_PRIM_MIN"."FALTA" IS 'Fecha de alta';
   COMMENT ON COLUMN "AXIS"."HIS_DET_PROD_PRIM_MIN"."CUSUALT" IS 'Usuario de alta';
   COMMENT ON COLUMN "AXIS"."HIS_DET_PROD_PRIM_MIN"."FMODIFI" IS 'Fecha de modificaci�n';
   COMMENT ON COLUMN "AXIS"."HIS_DET_PROD_PRIM_MIN"."CUSUMOD" IS 'Usuario de modificaci�n';
   COMMENT ON COLUMN "AXIS"."HIS_DET_PROD_PRIM_MIN"."CUSUHIST" IS 'Usuario que realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_DET_PROD_PRIM_MIN"."FCREAHIST" IS 'Fecha en que se realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_DET_PROD_PRIM_MIN"."ACCION" IS 'Acci�n realizada';
   COMMENT ON TABLE "AXIS"."HIS_DET_PROD_PRIM_MIN"  IS 'Hist�rico de la tabla DET_PROD_PRIM_MIN';
  GRANT UPDATE ON "AXIS"."HIS_DET_PROD_PRIM_MIN" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_DET_PROD_PRIM_MIN" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HIS_DET_PROD_PRIM_MIN" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HIS_DET_PROD_PRIM_MIN" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_DET_PROD_PRIM_MIN" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HIS_DET_PROD_PRIM_MIN" TO "PROGRAMADORESCSI";
