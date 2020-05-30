--------------------------------------------------------
--  DDL for Index CFG_CARGA_ALIAS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."CFG_CARGA_ALIAS_PK" ON "AXIS"."CFG_CARGA_ALIAS" ("CEMPRES", "CPROCESO", "REGCLAVE", "CREGISTRO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;