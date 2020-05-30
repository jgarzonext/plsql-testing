--------------------------------------------------------
--  DDL for Table IBNR_SAM_SINACUML
--------------------------------------------------------

  CREATE TABLE "AXIS"."IBNR_SAM_SINACUML" 
   (	"SPROCES" NUMBER, 
	"FCALCUL" DATE, 
	"FCALCUL_I" DATE, 
	"FCALCUL_J" DATE, 
	"CTIPO" NUMBER, 
	"ISINACU" NUMBER, 
	"CMODO" VARCHAR2(1 BYTE), 
	"CGARANT" NUMBER, 
	"SPRODUC" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."IBNR_SAM_SINACUML"."SPROCES" IS 'Identificador del proceso';
   COMMENT ON COLUMN "AXIS"."IBNR_SAM_SINACUML"."FCALCUL" IS 'Fecha del c�lculo (real)';
   COMMENT ON COLUMN "AXIS"."IBNR_SAM_SINACUML"."FCALCUL_I" IS 'Periodo de ocurrencia X';
   COMMENT ON COLUMN "AXIS"."IBNR_SAM_SINACUML"."FCALCUL_J" IS 'Periodo de ocurrencia Y';
   COMMENT ON COLUMN "AXIS"."IBNR_SAM_SINACUML"."CTIPO" IS 'Tipo de inflaci�n  (0 - pagos , 1- reservas)';
   COMMENT ON COLUMN "AXIS"."IBNR_SAM_SINACUML"."ISINACU" IS 'Importe pagado /reservado ACUMULADO';
   COMMENT ON COLUMN "AXIS"."IBNR_SAM_SINACUML"."CMODO" IS 'Previo = P / Real = R';
   COMMENT ON COLUMN "AXIS"."IBNR_SAM_SINACUML"."CGARANT" IS 'Identificador de la garant�a';
   COMMENT ON COLUMN "AXIS"."IBNR_SAM_SINACUML"."SPRODUC" IS 'Identificador del producto';
   COMMENT ON TABLE "AXIS"."IBNR_SAM_SINACUML"  IS 'Tabla de Tri�ngulo de siniestros pagados/reservados acumulados';
  GRANT UPDATE ON "AXIS"."IBNR_SAM_SINACUML" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."IBNR_SAM_SINACUML" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."IBNR_SAM_SINACUML" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."IBNR_SAM_SINACUML" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."IBNR_SAM_SINACUML" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."IBNR_SAM_SINACUML" TO "PROGRAMADORESCSI";
