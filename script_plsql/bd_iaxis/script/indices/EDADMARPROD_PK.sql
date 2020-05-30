--------------------------------------------------------
--  DDL for Index EDADMARPROD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."EDADMARPROD_PK" ON "AXIS"."EDADMARPROD" ("SPRODUC", "NEDAMAR") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
