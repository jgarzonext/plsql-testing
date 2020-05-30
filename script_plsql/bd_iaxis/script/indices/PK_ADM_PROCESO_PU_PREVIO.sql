--------------------------------------------------------
--  DDL for Index PK_ADM_PROCESO_PU_PREVIO
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."PK_ADM_PROCESO_PU_PREVIO" ON "AXIS"."ADM_PROCESO_PU_PREVIO" ("SPROCES", "SSEGURO", "NRIESGO", "FEFECTO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
