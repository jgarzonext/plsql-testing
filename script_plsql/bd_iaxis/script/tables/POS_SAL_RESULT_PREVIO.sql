--------------------------------------------------------
--  DDL for Table POS_SAL_RESULT_PREVIO
--------------------------------------------------------

  CREATE TABLE "AXIS"."POS_SAL_RESULT_PREVIO" 
   (	"SPROCES" NUMBER, 
	"FCIERRE" DATE, 
	"CAGENTE" NUMBER, 
	"ISALARIO" NUMBER, 
	"PCUMPLI" NUMBER, 
	"PSINIES" NUMBER, 
	"PBONIF" NUMBER, 
	"PPORSAL" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."POS_SAL_RESULT_PREVIO"."SPROCES" IS 'Código de proceso';
   COMMENT ON COLUMN "AXIS"."POS_SAL_RESULT_PREVIO"."FCIERRE" IS 'Fecha de cierre';
   COMMENT ON COLUMN "AXIS"."POS_SAL_RESULT_PREVIO"."CAGENTE" IS 'Código de agente';
   COMMENT ON COLUMN "AXIS"."POS_SAL_RESULT_PREVIO"."ISALARIO" IS 'Importe de salario';
   COMMENT ON COLUMN "AXIS"."POS_SAL_RESULT_PREVIO"."PCUMPLI" IS 'Porcentaje de cumplimiento';
   COMMENT ON COLUMN "AXIS"."POS_SAL_RESULT_PREVIO"."PSINIES" IS 'Porcentaje de siniestralidad';
   COMMENT ON COLUMN "AXIS"."POS_SAL_RESULT_PREVIO"."PBONIF" IS 'Porcentaje de bonificación';
   COMMENT ON COLUMN "AXIS"."POS_SAL_RESULT_PREVIO"."PPORSAL" IS 'Porcentaje de salario';
  GRANT UPDATE ON "AXIS"."POS_SAL_RESULT_PREVIO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."POS_SAL_RESULT_PREVIO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."POS_SAL_RESULT_PREVIO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."POS_SAL_RESULT_PREVIO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."POS_SAL_RESULT_PREVIO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."POS_SAL_RESULT_PREVIO" TO "PROGRAMADORESCSI";
