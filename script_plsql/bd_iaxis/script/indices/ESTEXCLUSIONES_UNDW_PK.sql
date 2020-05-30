--------------------------------------------------------
--  DDL for Index ESTEXCLUSIONES_UNDW_PK
--------------------------------------------------------

  CREATE INDEX "AXIS"."ESTEXCLUSIONES_UNDW_PK" ON "AXIS"."ESTEXCLUSIONES_UNDW" ("SSEGURO", "NRIESGO", "NMOVIMI", "CEMPRES", "SORDEN", "NORDEN", "CODEXCLUS") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
