--------------------------------------------------------
--  DDL for Index ESTACTIONS_UNDW_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."ESTACTIONS_UNDW_PK" ON "AXIS"."ESTACTIONS_UNDW" ("SSEGURO", "NRIESGO", "NMOVIMI", "CEMPRES", "SORDEN", "ACTION", "NORDEN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
