--------------------------------------------------------
--  DDL for Index HISPERLOPD_PERSONAS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."HISPERLOPD_PERSONAS_PK" ON "AXIS"."HISPERLOPD_PERSONAS" ("SPERSON", "NORDEN", "NUM_LOPD") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
