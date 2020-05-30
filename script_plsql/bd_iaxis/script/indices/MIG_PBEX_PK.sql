--------------------------------------------------------
--  DDL for Index MIG_PBEX_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."MIG_PBEX_PK" ON "AXIS"."MIG_PBEX" ("SPROCES", "CRAMDGS", "CRAMO", "CMODALI", "CTIPSEG", "CCOLECT", "SSEGURO", "NRIESGO", "CGARANT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
