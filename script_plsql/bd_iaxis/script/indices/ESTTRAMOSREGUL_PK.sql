--------------------------------------------------------
--  DDL for Index ESTTRAMOSREGUL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."ESTTRAMOSREGUL_PK" ON "AXIS"."ESTTRAMOSREGUL" ("SSEGURO", "NMOVIMI", "NRIESGO", "CGARANT", "NMOVIMIORG") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
