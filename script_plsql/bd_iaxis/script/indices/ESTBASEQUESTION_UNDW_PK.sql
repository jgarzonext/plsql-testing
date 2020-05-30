--------------------------------------------------------
--  DDL for Index ESTBASEQUESTION_UNDW_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."ESTBASEQUESTION_UNDW_PK" ON "AXIS"."ESTBASEQUESTION_UNDW" ("SSEGURO", "NRIESGO", "NMOVIMI", "CEMPRES", "SORDEN", "CODE", "NORDEN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
