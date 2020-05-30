--------------------------------------------------------
--  DDL for Table CFG_CARGA_ALIAS
--------------------------------------------------------

  CREATE TABLE "AXIS"."CFG_CARGA_ALIAS" 
   (	"CEMPRES" NUMBER(2,0), 
	"CPROCESO" NUMBER, 
	"REGCLAVE" VARCHAR2(40 BYTE), 
	"VALORCLAVE" VARCHAR2(20 BYTE), 
	"CREGISTRO" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CFG_CARGA_ALIAS"."CEMPRES" IS 'Empresa';
   COMMENT ON COLUMN "AXIS"."CFG_CARGA_ALIAS"."CPROCESO" IS 'Código de proceso de carga';
   COMMENT ON COLUMN "AXIS"."CFG_CARGA_ALIAS"."REGCLAVE" IS 'Nombre registro clave, valor * si aplica a todas las filas por igual';
   COMMENT ON COLUMN "AXIS"."CFG_CARGA_ALIAS"."VALORCLAVE" IS 'Valor registro clave que identifica el tipo de registro. Nulo si regclave es * ';
   COMMENT ON COLUMN "AXIS"."CFG_CARGA_ALIAS"."CREGISTRO" IS 'Codigo de registro ';
   COMMENT ON TABLE "AXIS"."CFG_CARGA_ALIAS"  IS 'Tabla de configuración de alias de tablas intermedias de carga';
  GRANT UPDATE ON "AXIS"."CFG_CARGA_ALIAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CFG_CARGA_ALIAS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CFG_CARGA_ALIAS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CFG_CARGA_ALIAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CFG_CARGA_ALIAS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CFG_CARGA_ALIAS" TO "PROGRAMADORESCSI";
