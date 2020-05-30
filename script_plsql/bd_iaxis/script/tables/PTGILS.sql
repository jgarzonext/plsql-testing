--------------------------------------------------------
--  DDL for Table PTGILS
--------------------------------------------------------

  CREATE TABLE "AXIS"."PTGILS" 
   (	"CEMPRES" NUMBER(2,0), 
	"FCALCUL" DATE, 
	"SPROCES" NUMBER, 
	"CRAMO" NUMBER(8,0), 
	"IPTGILS" NUMBER DEFAULT 0, 
	"CERROR" NUMBER(2,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PTGILS"."CEMPRES" IS 'C�digo de la Empresa';
   COMMENT ON COLUMN "AXIS"."PTGILS"."FCALCUL" IS 'Fecha del c�lculo';
   COMMENT ON COLUMN "AXIS"."PTGILS"."SPROCES" IS 'C�digo del Proceso';
   COMMENT ON COLUMN "AXIS"."PTGILS"."CRAMO" IS 'C�digo del Ramo';
   COMMENT ON COLUMN "AXIS"."PTGILS"."IPTGILS" IS 'Importe PTGILS';
   COMMENT ON COLUMN "AXIS"."PTGILS"."CERROR" IS 'C�digo del error';
   COMMENT ON TABLE "AXIS"."PTGILS"  IS 'Tabla de PTGILS (Provisi�n de gastos internos de liquidacion)';
  GRANT UPDATE ON "AXIS"."PTGILS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PTGILS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PTGILS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PTGILS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PTGILS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PTGILS" TO "PROGRAMADORESCSI";