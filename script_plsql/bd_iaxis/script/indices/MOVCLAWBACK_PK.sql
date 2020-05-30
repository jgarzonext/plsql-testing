--------------------------------------------------------
--  DDL for Index MOVCLAWBACK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."MOVCLAWBACK_PK" ON "AXIS"."MOVCLAWBACK" ("SPROCES", "SSEGURO", "NMOVIMI_REF", "NRECIBO", "NMOVIMI", "CTIPCOM", "CMODCOM", "CGARANT", "CCONCEP", "CAGEVEN", "NRIESGO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
