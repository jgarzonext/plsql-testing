--------------------------------------------------------
--  DDL for Index PK_CFG_CARGAS_PRPTY
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."PK_CFG_CARGAS_PRPTY" ON "AXIS"."CFG_CARGAS_PRPTY" ("CEMPRES", "CPROCESO", "CCAMPO", "CPRPTY") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
