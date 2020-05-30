--------------------------------------------------------
--  DDL for Index AGE_TRANSICIONES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."AGE_TRANSICIONES_PK" ON "AXIS"."AGE_TRANSICIONES" ("CEMPRES", "CTIPAGE", "NORDEN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
