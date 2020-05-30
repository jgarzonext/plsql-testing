--------------------------------------------------------
--  DDL for Index PLANILLAS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."PLANILLAS_PK" ON "AXIS"."PLANILLAS" ("CMAP", "CRAMO", "SPRODUC", "CCOMPANI") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
