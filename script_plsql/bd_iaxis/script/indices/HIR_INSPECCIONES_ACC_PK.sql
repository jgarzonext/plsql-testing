--------------------------------------------------------
--  DDL for Index HIR_INSPECCIONES_ACC_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."HIR_INSPECCIONES_ACC_PK" ON "AXIS"."HIR_INSPECCIONES_ACC" ("CEMPRES", "SORDEN", "NINSPECCION", "CACCESORIO", "FHIST") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
