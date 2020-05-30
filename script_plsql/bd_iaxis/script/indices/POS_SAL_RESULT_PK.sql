--------------------------------------------------------
--  DDL for Index POS_SAL_RESULT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."POS_SAL_RESULT_PK" ON "AXIS"."POS_SAL_RESULT" ("FCIERRE", "CAGENTE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
