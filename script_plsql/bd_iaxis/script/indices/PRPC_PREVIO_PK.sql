--------------------------------------------------------
--  DDL for Index PRPC_PREVIO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."PRPC_PREVIO_PK" ON "AXIS"."PRPC_PREVIO" ("SPROCES", "CRAMDGS", "CRAMO", "CMODALI", "CTIPSEG", "CCOLECT", "SSEGURO", "NMOVIMI", "FINIEFE", "NRECIBO", "CGARANT", "NRIESGO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
