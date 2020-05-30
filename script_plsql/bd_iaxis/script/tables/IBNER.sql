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

   COMMENT ON COLUMN "AXIS"."IBNER"."CEMPRES" IS 'C�digo de la Empresa';
   COMMENT ON COLUMN "AXIS"."IBNER"."FCALCUL" IS 'Fecha del c�lculo';
   COMMENT ON COLUMN "AXIS"."IBNER"."SPROCES" IS 'C�digo del Proceso';
   COMMENT ON COLUMN "AXIS"."IBNER"."CRAMO" IS 'C�digo del Ramo';
   COMMENT ON COLUMN "AXIS"."IBNER"."IIBNER" IS 'Importe IBNER';
   COMMENT ON COLUMN "AXIS"."IBNER"."PRATIO" IS 'Porcentaje de desviaci�n seg�n el c�lculo de la provisi�n de los �ltimos 5 a�os';
   COMMENT ON COLUMN "AXIS"."IBNER"."CERROR" IS 'C�digo del error';
   COMMENT ON TABLE "AXIS"."IBNER"  IS 'Tabla de IBNER (Provisi�n complementaria a la IBNR_RAM)';
  GRANT UPDATE ON "AXIS"."IBNER" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."IBNER" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."IBNER" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."IBNER" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."IBNER" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."IBNER" TO "PROGRAMADORESCSI";
