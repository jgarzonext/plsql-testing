--------------------------------------------------------
--  DDL for Index HIR_INSPECCIONES_DVEH_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."HIR_INSPECCIONES_DVEH_PK" ON "AXIS"."HIR_INSPECCIONES_DVEH" ("CEMPRES", "SORDEN", "NINSPECCION", "FHIST") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
