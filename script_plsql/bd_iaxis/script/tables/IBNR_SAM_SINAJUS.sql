--------------------------------------------------------
--  DDL for Table IBNR_SAM_SINAJUS
--------------------------------------------------------

  CREATE TABLE "AXIS"."IBNR_SAM_SINAJUS" 
   (	"SPROCES" NUMBER, 
	"FCALCUL" DATE, 
	"FCALCUL_I" DATE, 
	"FCALCUL_J" DATE, 
	"CTIPO" NUMBER, 
	"ISINAJUS" NUMBER, 
	"CMODO" VARCHAR2(1 BYTE), 
	"CGARANT" NUMBER, 
	"SPRODUC" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."IBNR_SAM_SINAJUS"."SPROCES" IS 'Identificador del proceso';
   COMMENT ON COLUMN "AXIS"."IBNR_SAM_SINAJUS"."FCALCUL" IS 'Fecha del c�lculo (real)';
   COMMENT ON COLUMN "AXIS"."IBNR_SAM_SINAJUS"."FCALCUL_I" IS 'Periodo de ocurrencia X';
   COMMENT ON COLUMN "AXIS"."IBNR_SAM_SINAJUS"."FCALCUL_J" IS 'Periodo de ocurrencia Y';
   COMMENT ON COLUMN "AXIS"."IBNR_SAM_SINAJUS"."CTIPO" IS 'Tipo de inflaci�n  (0 - pagos , 1- reservas)';
   COMMENT ON COLUMN "AXIS"."IBNR_SAM_SINAJUS"."ISINAJUS" IS 'Importe pagado /reservado ajustado';
   COMMENT ON COLUMN "AXIS"."IBNR_SAM_SINAJUS"."CMODO" IS 'Previo = P / Real = R';
   COMMENT ON COLUMN "AXIS"."IBNR_SAM_SINAJUS"."CGARANT" IS 'Identificador de la garant�a';
   COMMENT ON COLUMN "AXIS"."IBNR_SAM_SINAJUS"."SPRODUC" IS 'Identificador del producto';
   COMMENT ON TABLE "AXIS"."IBNR_SAM_SINAJUS"  IS 'Tabla de Tri�ngulo de siniestros pag./res. ajustados';
  GRANT UPDATE ON "AXIS"."IBNR_SAM_SINAJUS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."IBNR_SAM_SINAJUS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."IBNR_SAM_SINAJUS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."IBNR_SAM_SINAJUS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."IBNR_SAM_SINAJUS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."IBNR_SAM_SINAJUS" TO "PROGRAMADORESCSI";
