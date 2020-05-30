--------------------------------------------------------
--  DDL for Index SIN_RECIBOS_COMPENSADOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."SIN_RECIBOS_COMPENSADOS_PK" ON "AXIS"."SIN_RECIBOS_COMPENSADOS" ("NSINIES", "NRECIBO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
