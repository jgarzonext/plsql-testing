--------------------------------------------------------
--  DDL for Index GARANSEGDET_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."GARANSEGDET_PK" ON "AXIS"."GARANSEGDET" ("SSEGURO", "CGARANT", "FINIEFE", "NRIESGO", "SPROCES", "NDETGAR") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
