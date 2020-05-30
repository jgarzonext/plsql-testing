--------------------------------------------------------
--  DDL for Index PK_ADM_PROCESO_PU
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."PK_ADM_PROCESO_PU" ON "AXIS"."ADM_PROCESO_PU" ("SPROCES", "SSEGURO", "NRIESGO", "FEFECTO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
