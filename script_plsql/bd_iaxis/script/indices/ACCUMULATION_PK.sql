--------------------------------------------------------
--  DDL for Index ACCUMULATION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."ACCUMULATION_PK" ON "AXIS"."ACCUMULATION" ("IDENTITY_DOCUMENT", "NORDEN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
