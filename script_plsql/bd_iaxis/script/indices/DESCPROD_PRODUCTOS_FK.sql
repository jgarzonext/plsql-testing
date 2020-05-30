--------------------------------------------------------
--  DDL for Index DESCPROD_PRODUCTOS_FK
--------------------------------------------------------

  CREATE INDEX "AXIS"."DESCPROD_PRODUCTOS_FK" ON "AXIS"."DESCPROD" ("CRAMO", "CMODALI", "CTIPSEG", "CCOLECT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
