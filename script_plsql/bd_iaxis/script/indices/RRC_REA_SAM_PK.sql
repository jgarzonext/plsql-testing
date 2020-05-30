--------------------------------------------------------
--  DDL for Index RRC_REA_SAM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."RRC_REA_SAM_PK" ON "AXIS"."RRC_REA_SAM" ("SPROCES", "CRAMO", "CMODALI", "CTIPSEG", "CCOLECT", "SSEGURO", "NMOVIMI", "NRIESGO", "NRECIBO", "CGARANT", "CCOMPANI") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
