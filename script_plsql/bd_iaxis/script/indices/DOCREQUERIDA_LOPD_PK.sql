--------------------------------------------------------
--  DDL for Index DOCREQUERIDA_LOPD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."DOCREQUERIDA_LOPD_PK" ON "AXIS"."DOCREQUERIDA_LOPD" ("SEQDOCU", "SSEGURO", "NMOVIMI") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
