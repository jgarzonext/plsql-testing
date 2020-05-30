--------------------------------------------------------
--  DDL for Table HIS_AUT_PROD_PESOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."HIS_AUT_PROD_PESOS" 
   (	"SPRODUC" NUMBER(22,0), 
	"CPESO" NUMBER(22,0), 
	"CIDIOMA" NUMBER(22,0), 
	"TPESO" VARCHAR2(100 BYTE), 
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

   COMMENT ON COLUMN "AXIS"."HIS_AUT_PROD_PESOS"."SPRODUC" IS 'Secuencia del producto';
   COMMENT ON COLUMN "AXIS"."HIS_AUT_PROD_PESOS"."CPESO" IS 'C�digo de Peso';
   COMMENT ON COLUMN "AXIS"."HIS_AUT_PROD_PESOS"."CIDIOMA" IS 'C�digo de Idioma';
   COMMENT ON COLUMN "AXIS"."HIS_AUT_PROD_PESOS"."TPESO" IS 'Descripci�n Peso';
   COMMENT ON COLUMN "AXIS"."HIS_AUT_PROD_PESOS"."CUSUALT" IS 'Usuario que crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_AUT_PROD_PESOS"."FALTA" IS 'Fecha en que se crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_AUT_PROD_PESOS"."CUSUMOD" IS 'Usuario que modifica crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_AUT_PROD_PESOS"."FMODIFI" IS 'Fecha en que se modifica el registro';
   COMMENT ON COLUMN "AXIS"."HIS_AUT_PROD_PESOS"."CUSUHIST" IS 'Usuario que realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_AUT_PROD_PESOS"."FCREAHIST" IS 'Fecha en que se realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_AUT_PROD_PESOS"."ACCION" IS 'Acci�n realizada';
   COMMENT ON TABLE "AXIS"."HIS_AUT_PROD_PESOS"  IS 'Hist�rico de la tabla AUT_PROD_PESOS';
  GRANT UPDATE ON "AXIS"."HIS_AUT_PROD_PESOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_AUT_PROD_PESOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HIS_AUT_PROD_PESOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HIS_AUT_PROD_PESOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_AUT_PROD_PESOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HIS_AUT_PROD_PESOS" TO "PROGRAMADORESCSI";