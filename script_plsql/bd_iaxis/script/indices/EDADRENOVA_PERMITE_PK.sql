--------------------------------------------------------
--  DDL for Index EDADRENOVA_PERMITE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."EDADRENOVA_PERMITE_PK" ON "AXIS"."EDADRENOVA_PERMITE" ("SPRODUC", "CACTIVI", "CGARANT", "NEDAMARPRD") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
