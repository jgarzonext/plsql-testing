--------------------------------------------------------
--  DDL for Index CFG_ROL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."CFG_ROL_PK" ON "AXIS"."CFG_ROL" ("CROL", "CEMPRES") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
