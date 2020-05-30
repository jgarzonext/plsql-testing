--------------------------------------------------------
--  DDL for Table HIS_GARANPRO_ULK
--------------------------------------------------------

  CREATE TABLE "AXIS"."HIS_GARANPRO_ULK" 
   (	"CRAMO" NUMBER(22,0), 
	"CMODALI" NUMBER(22,0), 
	"CTIPSEG" NUMBER(22,0), 
	"CCOLECT" NUMBER(22,0), 
	"CGARANT" NUMBER(22,0), 
	"NFUNCIO" NUMBER(22,0), 
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

   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO_ULK"."CRAMO" IS 'C�digo de ramo';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO_ULK"."CMODALI" IS 'C�digo de modalidad';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO_ULK"."CTIPSEG" IS 'C�digo de tipo de seguro';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO_ULK"."CCOLECT" IS 'C�digo de colectivo';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO_ULK"."CGARANT" IS 'C�digo de garant�a';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO_ULK"."NFUNCIO" IS 'C�digo de funci�n que calcula el capital de riesgo';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO_ULK"."CUSUALT" IS 'Usuario que crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO_ULK"."FALTA" IS 'Fecha en que se crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO_ULK"."CUSUMOD" IS 'Usuario que modifica crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO_ULK"."FMODIFI" IS 'Fecha en que se modifica el registro';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO_ULK"."CUSUHIST" IS 'Usuario que realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO_ULK"."FCREAHIST" IS 'Fecha en que se realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_GARANPRO_ULK"."ACCION" IS 'Acci�n realizada';
   COMMENT ON TABLE "AXIS"."HIS_GARANPRO_ULK"  IS 'Hist�rico de la tabla GARANPRO_ULK';
  GRANT UPDATE ON "AXIS"."HIS_GARANPRO_ULK" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_GARANPRO_ULK" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HIS_GARANPRO_ULK" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HIS_GARANPRO_ULK" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_GARANPRO_ULK" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HIS_GARANPRO_ULK" TO "PROGRAMADORESCSI";
