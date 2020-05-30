--------------------------------------------------------
--  DDL for Table AUT_CODAGRMARCA
--------------------------------------------------------

  CREATE TABLE "AXIS"."AUT_CODAGRMARCA" 
   (	"CAGRMARCA" VARCHAR2(20 BYTE), 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"FMODIFI" DATE, 
	"FBAJA" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."AUT_CODAGRMARCA"."CAGRMARCA" IS 'Codigo agrupacion por marca';
   COMMENT ON COLUMN "AXIS"."AUT_CODAGRMARCA"."CUSUALT" IS 'Usuario que da de alta el registro';
   COMMENT ON COLUMN "AXIS"."AUT_CODAGRMARCA"."FALTA" IS 'Fecha de alta del registro';
   COMMENT ON COLUMN "AXIS"."AUT_CODAGRMARCA"."CUSUMOD" IS 'Usuario de la �ltima modificaci�n del registro';
   COMMENT ON COLUMN "AXIS"."AUT_CODAGRMARCA"."FMODIFI" IS 'Fecha de la �ltima modificaci�n del registro';
   COMMENT ON COLUMN "AXIS"."AUT_CODAGRMARCA"."FBAJA" IS 'Fecha de baja del registro';
   COMMENT ON TABLE "AXIS"."AUT_CODAGRMARCA"  IS 'Tabla cod�gos agrupaciones marca';
  GRANT UPDATE ON "AXIS"."AUT_CODAGRMARCA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AUT_CODAGRMARCA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."AUT_CODAGRMARCA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."AUT_CODAGRMARCA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AUT_CODAGRMARCA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."AUT_CODAGRMARCA" TO "PROGRAMADORESCSI";