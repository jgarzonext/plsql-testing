--------------------------------------------------------
--  DDL for Index PPNC_REA_PREVIO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."PPNC_REA_PREVIO_PK" ON "AXIS"."PPNC_REA_PREVIO" ("SPROCES", "CRAMO", "CMODALI", "CTIPSEG", "CCOLECT", "SSEGURO", "NMOVIMI", "NRIESGO", "CGARANT", "CCOMPANI", "NTRAMO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
