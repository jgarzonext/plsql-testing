--------------------------------------------------------
--  DDL for Index POS_SAL_DETALLE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."POS_SAL_DETALLE_PK" ON "AXIS"."POS_SAL_DETALLE" ("IDOBJETO", "CRAMO", "SPROCES", "CODIGO", "CAGENTE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
