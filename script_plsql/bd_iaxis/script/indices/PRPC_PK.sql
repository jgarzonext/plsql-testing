--------------------------------------------------------
--  DDL for Index PRPC_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."PRPC_PK" ON "AXIS"."PRPC" ("SPROCES", "CRAMDGS", "CRAMO", "CMODALI", "CTIPSEG", "CCOLECT", "SSEGURO", "NMOVIMI", "FINIEFE", "NRECIBO", "CGARANT", "NRIESGO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
