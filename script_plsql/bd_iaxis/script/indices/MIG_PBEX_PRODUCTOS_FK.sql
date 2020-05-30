--------------------------------------------------------
--  DDL for Index MIG_PBEX_PRODUCTOS_FK
--------------------------------------------------------

  CREATE INDEX "AXIS"."MIG_PBEX_PRODUCTOS_FK" ON "AXIS"."MIG_PBEX" ("CRAMO", "CMODALI", "CTIPSEG", "CCOLECT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
