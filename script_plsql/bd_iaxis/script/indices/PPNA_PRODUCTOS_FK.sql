--------------------------------------------------------
--  DDL for Index PPNA_PRODUCTOS_FK
--------------------------------------------------------

  CREATE INDEX "AXIS"."PPNA_PRODUCTOS_FK" ON "AXIS"."PPNA" ("CRAMO", "CMODALI", "CTIPSEG", "CCOLECT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
