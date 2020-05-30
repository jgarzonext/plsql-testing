--------------------------------------------------------
--  DDL for Index DOCREQUERIDA_LOPD_RIESGO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."DOCREQUERIDA_LOPD_RIESGO_PK" ON "AXIS"."DOCREQUERIDA_LOPD_RIESGO" ("SEQDOCU", "SSEGURO", "NRIESGO", "NMOVIMI") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
