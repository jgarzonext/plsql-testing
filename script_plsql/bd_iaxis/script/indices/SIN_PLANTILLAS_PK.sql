--------------------------------------------------------
--  DDL for Index SIN_PLANTILLAS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."SIN_PLANTILLAS_PK" ON "AXIS"."SIN_PLANTILLAS" ("CCODPLAN", "CCAMPO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
