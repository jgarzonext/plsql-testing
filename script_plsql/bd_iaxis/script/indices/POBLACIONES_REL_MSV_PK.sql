--------------------------------------------------------
--  DDL for Index POBLACIONES_REL_MSV_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."POBLACIONES_REL_MSV_PK" ON "AXIS"."POBLACIONES_REL_MSV" ("CPOBLAC_MSV", "CPOBLAC", "CPROVIN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
