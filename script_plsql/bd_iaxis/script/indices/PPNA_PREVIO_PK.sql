--------------------------------------------------------
--  DDL for Index PPNA_PREVIO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."PPNA_PREVIO_PK" ON "AXIS"."PPNA_PREVIO" ("SPROCES", "CRAMDGS", "CRAMO", "CMODALI", "CTIPSEG", "CCOLECT", "SSEGURO", "NMOVIMI", "NRIESGO", "CGARANT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
