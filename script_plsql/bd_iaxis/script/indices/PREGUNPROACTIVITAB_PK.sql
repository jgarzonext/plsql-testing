--------------------------------------------------------
--  DDL for Index PREGUNPROACTIVITAB_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."PREGUNPROACTIVITAB_PK" ON "AXIS"."PREGUNPROACTIVITAB" ("CPREGUN", "SPRODUC", "CACTIVI", "COLUMNA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
