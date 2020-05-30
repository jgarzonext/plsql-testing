--------------------------------------------------------
--  DDL for Index CFG_COD_CFGMAP_DET_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."CFG_COD_CFGMAP_DET_PK" ON "AXIS"."CFG_COD_CFGMAP_DET" ("CEMPRES", "CCFGMAP", "CIDIOMA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
