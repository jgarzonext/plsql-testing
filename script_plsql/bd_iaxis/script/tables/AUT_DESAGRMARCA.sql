--------------------------------------------------------
--  DDL for Table AUT_DESAGRMARCA
--------------------------------------------------------

  CREATE TABLE "AXIS"."AUT_DESAGRMARCA" 
   (	"CAGRMARCA" VARCHAR2(20 BYTE), 
	"CIDIOMA" NUMBER(2,0), 
	"TAGRMARCA" VARCHAR2(100 BYTE), 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"FMODIFI" DATE, 
	"FBAJA" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."AUT_DESAGRMARCA"."CAGRMARCA" IS 'C�digo de descripci�n agrupacion marca';
   COMMENT ON COLUMN "AXIS"."AUT_DESAGRMARCA"."CIDIOMA" IS 'C�digo del idioma';
   COMMENT ON COLUMN "AXIS"."AUT_DESAGRMARCA"."TAGRMARCA" IS 'Descripci�n de agrupacion marca';
   COMMENT ON COLUMN "AXIS"."AUT_DESAGRMARCA"."CUSUALT" IS 'Usuario que da de alta el registro';
   COMMENT ON COLUMN "AXIS"."AUT_DESAGRMARCA"."FALTA" IS 'Fecha de alta del registro';
   COMMENT ON COLUMN "AXIS"."AUT_DESAGRMARCA"."CUSUMOD" IS 'Usuario de la �ltima modificaci�n del registro';
   COMMENT ON COLUMN "AXIS"."AUT_DESAGRMARCA"."FMODIFI" IS 'Fecha de la �ltima modificaci�n del registro';
   COMMENT ON COLUMN "AXIS"."AUT_DESAGRMARCA"."FBAJA" IS 'Fecha de baja del registro';
  GRANT UPDATE ON "AXIS"."AUT_DESAGRMARCA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AUT_DESAGRMARCA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."AUT_DESAGRMARCA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."AUT_DESAGRMARCA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AUT_DESAGRMARCA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."AUT_DESAGRMARCA" TO "PROGRAMADORESCSI";