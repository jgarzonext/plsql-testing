--------------------------------------------------------
--  DDL for Table IBNR_SAM_SIN_PAPAG
--------------------------------------------------------

  CREATE TABLE "AXIS"."IBNR_SAM_SIN_PAPAG" 
   (	"SPROCES" NUMBER, 
	"FCALCUL" DATE, 
	"FCALCUL_I" DATE, 
	"CTIPO" NUMBER, 
	"PPAPAG" NUMBER, 
	"CMODO" VARCHAR2(1 BYTE), 
	"CGARANT" NUMBER, 
	"SPRODUC" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."IBNR_SAM_SIN_PAPAG"."SPROCES" IS 'Identificador del proceso';
   COMMENT ON COLUMN "AXIS"."IBNR_SAM_SIN_PAPAG"."FCALCUL" IS 'Fecha del c�lculo (real)';
   COMMENT ON COLUMN "AXIS"."IBNR_SAM_SIN_PAPAG"."FCALCUL_I" IS 'Periodo de ocurrencia X';
   COMMENT ON COLUMN "AXIS"."IBNR_SAM_SIN_PAPAG"."CTIPO" IS 'Tipo de inflaci�n  (0 - pagos , 1- reservas)';
   COMMENT ON COLUMN "AXIS"."IBNR_SAM_SIN_PAPAG"."PPAPAG" IS 'Porcentaje de pago.';
   COMMENT ON COLUMN "AXIS"."IBNR_SAM_SIN_PAPAG"."CMODO" IS 'Previo = P / Real = R';
   COMMENT ON COLUMN "AXIS"."IBNR_SAM_SIN_PAPAG"."CGARANT" IS 'Identificador de la garant�a';
   COMMENT ON COLUMN "AXIS"."IBNR_SAM_SIN_PAPAG"."SPRODUC" IS 'Identificador del producto';
   COMMENT ON TABLE "AXIS"."IBNR_SAM_SIN_PAPAG"  IS 'Tabla de Patr�n de pago de los siniestros';
  GRANT UPDATE ON "AXIS"."IBNR_SAM_SIN_PAPAG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."IBNR_SAM_SIN_PAPAG" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."IBNR_SAM_SIN_PAPAG" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."IBNR_SAM_SIN_PAPAG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."IBNR_SAM_SIN_PAPAG" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."IBNR_SAM_SIN_PAPAG" TO "PROGRAMADORESCSI";
