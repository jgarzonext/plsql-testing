--------------------------------------------------------
--  DDL for Index CFG_LRE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."CFG_LRE_PK" ON "AXIS"."CFG_LRE" ("CEMPRES", "CMODO", "SPRODUC", "CMOTMOV", "CTIPLIS") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
