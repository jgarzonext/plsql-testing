--------------------------------------------------------
--  DDL for Index DIR_LOCALIDADES_POBLACIONES_FK
--------------------------------------------------------

  CREATE INDEX "AXIS"."DIR_LOCALIDADES_POBLACIONES_FK" ON "AXIS"."DIR_LOCALIDADES" ("CPROVIN", "CPOBLAC") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
