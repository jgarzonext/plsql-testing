--------------------------------------------------------
--  DDL for Index HIS_CFG_LRE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."HIS_CFG_LRE_PK" ON "AXIS"."HIS_CFG_LRE" ("CEMPRES", "CMODO", "SPRODUC", "CMOTMOV", "CTIPLIS", "FCREAHIST", "ACCION") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
