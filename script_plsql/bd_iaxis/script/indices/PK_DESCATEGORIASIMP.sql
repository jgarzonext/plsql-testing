--------------------------------------------------------
--  DDL for Index PK_DESCATEGORIASIMP
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."PK_DESCATEGORIASIMP" ON "AXIS"."DESCATEGORIASIMP" ("CCATEGORIA", "CIDIOMA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
