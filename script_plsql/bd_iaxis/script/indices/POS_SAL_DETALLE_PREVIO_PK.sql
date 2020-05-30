--------------------------------------------------------
--  DDL for Index POS_SAL_DETALLE_PREVIO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."POS_SAL_DETALLE_PREVIO_PK" ON "AXIS"."POS_SAL_DETALLE_PREVIO" ("IDOBJETO", "CRAMO", "SPROCES", "CODIGO", "CAGENTE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
