--------------------------------------------------------
--  DDL for Index DESCACTI_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."DESCACTI_PK" ON "AXIS"."DESCACTI" ("CRAMO", "CMODALI", "CTIPSEG", "CCOLECT", "CACTIVI", "CDESC", "CMODDESC", "FINIVIG", "NINIALT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
