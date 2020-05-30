--------------------------------------------------------
--  DDL for Index PRPC_PRODUCTOS_FK
--------------------------------------------------------

  CREATE INDEX "AXIS"."PRPC_PRODUCTOS_FK" ON "AXIS"."PRPC" ("CRAMO", "CMODALI", "CTIPSEG", "CCOLECT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
