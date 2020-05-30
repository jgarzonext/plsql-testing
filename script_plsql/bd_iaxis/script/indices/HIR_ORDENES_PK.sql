--------------------------------------------------------
--  DDL for Index HIR_ORDENES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."HIR_ORDENES_PK" ON "AXIS"."HIR_ORDENES" ("CEMPRES", "SORDEN", "FHIST") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
