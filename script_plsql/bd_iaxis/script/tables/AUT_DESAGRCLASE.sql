--------------------------------------------------------
--  DDL for Table AUT_DESAGRCLASE
--------------------------------------------------------

  CREATE TABLE "AXIS"."AUT_DESAGRCLASE" 
   (	"CAGRCLASE" VARCHAR2(20 BYTE), 
	"CIDIOMA" NUMBER(2,0), 
	"TAGRCLASE" VARCHAR2(100 BYTE), 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"FMODIFI" DATE, 
	"FBAJA" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."AUT_DESAGRCLASE"."CAGRCLASE" IS 'C�digo de agrupacion clase';
   COMMENT ON COLUMN "AXIS"."AUT_DESAGRCLASE"."CIDIOMA" IS 'C�digo del idioma';
   COMMENT ON COLUMN "AXIS"."AUT_DESAGRCLASE"."TAGRCLASE" IS 'Descripci�n del agrupaci�n clase';
   COMMENT ON COLUMN "AXIS"."AUT_DESAGRCLASE"."CUSUALT" IS 'Usuario que da de alta el registro';
   COMMENT ON COLUMN "AXIS"."AUT_DESAGRCLASE"."FALTA" IS 'Fecha de alta del registro';
   COMMENT ON COLUMN "AXIS"."AUT_DESAGRCLASE"."CUSUMOD" IS 'Usuario de la �ltima modificaci�n del registro';
   COMMENT ON COLUMN "AXIS"."AUT_DESAGRCLASE"."FMODIFI" IS 'Fecha de la �ltima modificaci�n del registro';
   COMMENT ON COLUMN "AXIS"."AUT_DESAGRCLASE"."FBAJA" IS 'Fecha de baja del registro';
  GRANT UPDATE ON "AXIS"."AUT_DESAGRCLASE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AUT_DESAGRCLASE" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."AUT_DESAGRCLASE" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."AUT_DESAGRCLASE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AUT_DESAGRCLASE" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."AUT_DESAGRCLASE" TO "PROGRAMADORESCSI";
