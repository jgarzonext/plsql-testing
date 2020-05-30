--------------------------------------------------------
--  DDL for Index DOCREQUERIDA_LOPD_INQAVAL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."DOCREQUERIDA_LOPD_INQAVAL_PK" ON "AXIS"."DOCREQUERIDA_LOPD_INQAVAL" ("SEQDOCU", "SSEGURO", "NINQAVAL", "NMOVIMI") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
