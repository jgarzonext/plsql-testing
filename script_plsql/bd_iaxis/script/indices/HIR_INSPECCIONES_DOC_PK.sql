--------------------------------------------------------
--  DDL for Index HIR_INSPECCIONES_DOC_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."HIR_INSPECCIONES_DOC_PK" ON "AXIS"."HIR_INSPECCIONES_DOC" ("CEMPRES", "SORDEN", "NINSPECCION", "NDOCUME", "FHIST") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
