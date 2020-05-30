--------------------------------------------------------
--  DDL for Index CLASACTIVIPROD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."CLASACTIVIPROD_PK" ON "AXIS"."CLASACTIVIPROD" ("SPRODUC", "CACTIVI", "CCLASACT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
