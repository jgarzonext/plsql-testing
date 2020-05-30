--------------------------------------------------------
--  DDL for Index DESCPROD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."DESCPROD_PK" ON "AXIS"."DESCPROD" ("CMODALI", "CCOLECT", "CRAMO", "CTIPSEG", "CDESC", "CMODDESC", "FINIVIG", "NINIALT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
