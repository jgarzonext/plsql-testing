--------------------------------------------------------
--  DDL for Table DESEVIDENCIAS_UDW
--------------------------------------------------------

  CREATE TABLE "AXIS"."DESEVIDENCIAS_UDW" 
   (	"CEMPRES" NUMBER, 
	"CEVIDEN" NUMBER, 
	"CIDIOMA" NUMBER, 
	"CODEVID" VARCHAR2(20 BYTE), 
	"TEVIDEN" VARCHAR2(1000 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DESEVIDENCIAS_UDW"."CEMPRES" IS 'C�digo de la empresa';
   COMMENT ON COLUMN "AXIS"."DESEVIDENCIAS_UDW"."CEVIDEN" IS 'C�digo de la evidencia';
   COMMENT ON COLUMN "AXIS"."DESEVIDENCIAS_UDW"."CIDIOMA" IS 'C�digo del idioma';
   COMMENT ON COLUMN "AXIS"."DESEVIDENCIAS_UDW"."CODEVID" IS 'C�digo evidencia';
   COMMENT ON COLUMN "AXIS"."DESEVIDENCIAS_UDW"."TEVIDEN" IS 'Descripci�n evidencia';
  GRANT UPDATE ON "AXIS"."DESEVIDENCIAS_UDW" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DESEVIDENCIAS_UDW" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DESEVIDENCIAS_UDW" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DESEVIDENCIAS_UDW" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DESEVIDENCIAS_UDW" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DESEVIDENCIAS_UDW" TO "PROGRAMADORESCSI";