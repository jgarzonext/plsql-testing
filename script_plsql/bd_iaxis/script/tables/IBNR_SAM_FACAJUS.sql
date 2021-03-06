--------------------------------------------------------
--  DDL for Table IBNR_SAM_FACAJUS
--------------------------------------------------------

  CREATE TABLE "AXIS"."IBNR_SAM_FACAJUS" 
   (	"SPROCES" NUMBER, 
	"FCALCUL" DATE, 
	"FCALCUL_I" DATE, 
	"FCALCUL_J" DATE, 
	"CTIPO" NUMBER, 
	"PFACTAJUS" NUMBER, 
	"CMODO" VARCHAR2(1 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."IBNR_SAM_FACAJUS"."SPROCES" IS 'Identificador del proceso';
   COMMENT ON COLUMN "AXIS"."IBNR_SAM_FACAJUS"."FCALCUL" IS 'Fecha del c�lculo (real)';
   COMMENT ON COLUMN "AXIS"."IBNR_SAM_FACAJUS"."FCALCUL_I" IS 'Periodo de ocurrencia X';
   COMMENT ON COLUMN "AXIS"."IBNR_SAM_FACAJUS"."FCALCUL_J" IS 'Periodo de ocurrencia Y';
   COMMENT ON COLUMN "AXIS"."IBNR_SAM_FACAJUS"."CTIPO" IS 'Tipo de inflaci�n  (0 - pagos , 1- reservas)';
   COMMENT ON COLUMN "AXIS"."IBNR_SAM_FACAJUS"."PFACTAJUS" IS 'Factor de ajuste';
   COMMENT ON COLUMN "AXIS"."IBNR_SAM_FACAJUS"."CMODO" IS 'Previo = P / Real = R';
   COMMENT ON TABLE "AXIS"."IBNR_SAM_FACAJUS"  IS 'Tabla de Tri�ngulo de factores de ajuste';
  GRANT UPDATE ON "AXIS"."IBNR_SAM_FACAJUS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."IBNR_SAM_FACAJUS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."IBNR_SAM_FACAJUS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."IBNR_SAM_FACAJUS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."IBNR_SAM_FACAJUS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."IBNR_SAM_FACAJUS" TO "PROGRAMADORESCSI";
