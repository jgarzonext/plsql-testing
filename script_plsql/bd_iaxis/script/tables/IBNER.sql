--------------------------------------------------------
--  DDL for Table IBNER
--------------------------------------------------------

  CREATE TABLE "AXIS"."IBNER" 
   (	"CEMPRES" NUMBER(2,0), 
	"FCALCUL" DATE, 
	"SPROCES" NUMBER, 
	"CRAMO" NUMBER(8,0), 
	"IIBNER" NUMBER DEFAULT 0, 
	"PRATIO" NUMBER(5,2) DEFAULT 0, 
	"CERROR" NUMBER(2,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."IBNER"."CEMPRES" IS 'Código de la Empresa';
   COMMENT ON COLUMN "AXIS"."IBNER"."FCALCUL" IS 'Fecha del cálculo';
   COMMENT ON COLUMN "AXIS"."IBNER"."SPROCES" IS 'Código del Proceso';
   COMMENT ON COLUMN "AXIS"."IBNER"."CRAMO" IS 'Código del Ramo';
   COMMENT ON COLUMN "AXIS"."IBNER"."IIBNER" IS 'Importe IBNER';
   COMMENT ON COLUMN "AXIS"."IBNER"."PRATIO" IS 'Porcentaje de desviación según el cálculo de la provisión de los últimos 5 años';
   COMMENT ON COLUMN "AXIS"."IBNER"."CERROR" IS 'Código del error';
   COMMENT ON TABLE "AXIS"."IBNER"  IS 'Tabla de IBNER (Provisión complementaria a la IBNR_RAM)';
  GRANT UPDATE ON "AXIS"."IBNER" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."IBNER" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."IBNER" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."IBNER" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."IBNER" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."IBNER" TO "PROGRAMADORESCSI";
