--------------------------------------------------------
--  DDL for Index AGE_BANCOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."AGE_BANCOS_PK" ON "AXIS"."AGE_BANCOS" ("CAGENTE", "CTIPBANCO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
