--------------------------------------------------------
--  DDL for Index POS_SAL_SALARIOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."POS_SAL_SALARIOS_PK" ON "AXIS"."POS_SAL_SALARIOS" ("CTIPFIG", "CTIPSAL", "FINIEFE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
