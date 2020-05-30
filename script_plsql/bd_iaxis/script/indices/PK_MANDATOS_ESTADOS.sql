--------------------------------------------------------
--  DDL for Index PK_MANDATOS_ESTADOS
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."PK_MANDATOS_ESTADOS" ON "AXIS"."MANDATOS_ESTADOS" ("NUMFOLIO", "CESTADO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
