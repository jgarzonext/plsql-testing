--------------------------------------------------------
--  DDL for Index POS_SAL_PRESUPUESTOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."POS_SAL_PRESUPUESTOS_PK" ON "AXIS"."POS_SAL_PRESUPUESTOS" ("CTIPFIG", "CAGENTE", "CRAMO", "FINIEFE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
