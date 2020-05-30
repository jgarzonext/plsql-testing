--------------------------------------------------------
--  DDL for Index PPNCREA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."PPNCREA_PK" ON "AXIS"."PPNC_REA" ("SPROCES", "CRAMO", "CMODALI", "CTIPSEG", "CCOLECT", "SSEGURO", "NMOVIMI", "NRIESGO", "CGARANT", "CCOMPANI", "NTRAMO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
