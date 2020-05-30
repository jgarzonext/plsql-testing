--------------------------------------------------------
--  DDL for Index ESTENFERMEDADES_UNDW_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."ESTENFERMEDADES_UNDW_PK" ON "AXIS"."ESTENFERMEDADES_UNDW" ("SSEGURO", "NRIESGO", "NMOVIMI", "CEMPRES", "SORDEN", "NORDEN", "CODENF") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
