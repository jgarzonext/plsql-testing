--------------------------------------------------------
--  DDL for Index CITAMEDICA_UNDW_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."CITAMEDICA_UNDW_PK" ON "AXIS"."CITAMEDICA_UNDW" ("SSEGURO", "NRIESGO", "NMOVIMI", "SPERASEG", "CEVIDEN", "NORDEN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
