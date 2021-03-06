--------------------------------------------------------
--  DDL for Table CFG_CARGA_ALIAS_DET
--------------------------------------------------------

  CREATE TABLE "AXIS"."CFG_CARGA_ALIAS_DET" 
   (	"CREGISTRO" NUMBER, 
	"CCAMPO" VARCHAR2(40 BYTE), 
	"CALIAS" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CFG_CARGA_ALIAS_DET"."CREGISTRO" IS 'C�digo registro';
   COMMENT ON COLUMN "AXIS"."CFG_CARGA_ALIAS_DET"."CCAMPO" IS 'C�digo campo';
   COMMENT ON COLUMN "AXIS"."CFG_CARGA_ALIAS_DET"."CALIAS" IS 'Codigo de alias';
   COMMENT ON TABLE "AXIS"."CFG_CARGA_ALIAS_DET"  IS 'Tabla de configuraci�n de campos de alias de tablas intermedias de carga';
  GRANT UPDATE ON "AXIS"."CFG_CARGA_ALIAS_DET" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CFG_CARGA_ALIAS_DET" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CFG_CARGA_ALIAS_DET" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CFG_CARGA_ALIAS_DET" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CFG_CARGA_ALIAS_DET" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CFG_CARGA_ALIAS_DET" TO "PROGRAMADORESCSI";
