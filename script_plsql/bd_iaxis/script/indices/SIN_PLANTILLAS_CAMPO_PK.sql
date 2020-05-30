--------------------------------------------------------
--  DDL for Index SIN_PLANTILLAS_CAMPO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."SIN_PLANTILLAS_CAMPO_PK" ON "AXIS"."SIN_PLANTILLAS_CAMPO" ("NSINIES", "CCODPLAN", "NDOCUME", "CCAMPO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
