--------------------------------------------------------
--  DDL for Index AGE_ASOCIACIONES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."AGE_ASOCIACIONES_PK" ON "AXIS"."AGE_ASOCIACIONES" ("CAGENTE", "CTIPASOCIACION") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
