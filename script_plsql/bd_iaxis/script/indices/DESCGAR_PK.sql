--------------------------------------------------------
--  DDL for Index DESCGAR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."DESCGAR_PK" ON "AXIS"."DESCGAR" ("CRAMO", "CMODALI", "CTIPSEG", "CCOLECT", "CACTIVI", "CGARANT", "CDESC", "CMODDESC", "FINIVIG", "NINIALT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
