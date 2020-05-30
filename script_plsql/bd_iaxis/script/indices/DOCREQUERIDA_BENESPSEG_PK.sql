--------------------------------------------------------
--  DDL for Index DOCREQUERIDA_BENESPSEG_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."DOCREQUERIDA_BENESPSEG_PK" ON "AXIS"."DOCREQUERIDA_BENESPSEG" ("SEQDOCU", "SSEGURO", "NRIESGO", "NMOVIMI", "SPERSON", "CTIPBEN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
