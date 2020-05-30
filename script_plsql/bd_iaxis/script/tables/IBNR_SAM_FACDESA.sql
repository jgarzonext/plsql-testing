--------------------------------------------------------
--  DDL for Table IBNR_SAM_FACDESA
--------------------------------------------------------

  CREATE TABLE "AXIS"."IBNR_SAM_FACDESA" 
   (	"SPROCES" NUMBER, 
	"FCALCUL" DATE, 
	"FCALCUL_I" DATE, 
	"CTIPO" NUMBER, 
	"IFACTOR" NUMBER, 
	"CMODO" VARCHAR2(1 BYTE), 
	"CGARANT" NUMBER, 
	"SPRODUC" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."IBNR_SAM_FACDESA"."SPROCES" IS 'Identificador del proceso';
   COMMENT ON COLUMN "AXIS"."IBNR_SAM_FACDESA"."FCALCUL" IS 'Fecha del c�lculo (real)';
   COMMENT ON COLUMN "AXIS"."IBNR_SAM_FACDESA"."FCALCUL_I" IS 'Periodo de ocurrencia X';
   COMMENT ON COLUMN "AXIS"."IBNR_SAM_FACDESA"."CTIPO" IS 'Tipo de inflaci�n  (0 - pagos , 1- reservas)';
   COMMENT ON COLUMN "AXIS"."IBNR_SAM_FACDESA"."IFACTOR" IS 'Factor de desarrollo acumulado.';
   COMMENT ON COLUMN "AXIS"."IBNR_SAM_FACDESA"."CMODO" IS 'Previo = P / Real = R';
   COMMENT ON COLUMN "AXIS"."IBNR_SAM_FACDESA"."CGARANT" IS 'Identificador de la garant�a';
   COMMENT ON COLUMN "AXIS"."IBNR_SAM_FACDESA"."SPRODUC" IS 'Identificador del producto';
   COMMENT ON TABLE "AXIS"."IBNR_SAM_FACDESA"  IS 'Tabla de Factores de desarrollo';
  GRANT UPDATE ON "AXIS"."IBNR_SAM_FACDESA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."IBNR_SAM_FACDESA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."IBNR_SAM_FACDESA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."IBNR_SAM_FACDESA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."IBNR_SAM_FACDESA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."IBNR_SAM_FACDESA" TO "PROGRAMADORESCSI";