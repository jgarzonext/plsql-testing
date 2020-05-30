--------------------------------------------------------
--  DDL for Index AUT_AGRUPACIONES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."AUT_AGRUPACIONES_PK" ON "AXIS"."AUT_AGRUPACIONES" ("CAGRMARCA", "CAGRCLASE", "CAGRTIPO", "CPROVIN", "CPOBLAC", "SPRODUC", "CCLASIFICACION") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
