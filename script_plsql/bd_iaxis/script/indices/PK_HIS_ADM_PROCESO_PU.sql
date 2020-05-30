--------------------------------------------------------
--  DDL for Index PK_HIS_ADM_PROCESO_PU
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."PK_HIS_ADM_PROCESO_PU" ON "AXIS"."HIS_ADM_PROCESO_PU" ("SPROCES", "SSEGURO", "NRIESGO", "FEFECTO", "NMOVHIS") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
