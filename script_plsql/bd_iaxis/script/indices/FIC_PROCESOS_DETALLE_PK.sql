--------------------------------------------------------
--  DDL for Index FIC_PROCESOS_DETALLE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."FIC_PROCESOS_DETALLE_PK" ON "AXIS"."FIC_PROCESOS_DETALLE" ("SPROCES", "NPROLIN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
