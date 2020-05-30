--------------------------------------------------------
--  DDL for Index PERLOPD_PERSONAS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."PERLOPD_PERSONAS_PK" ON "AXIS"."PERLOPD_PERSONAS" ("SPERSON", "NUM_LOPD") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
