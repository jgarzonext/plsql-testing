--------------------------------------------------------
--  DDL for Index SIN_TRAMITE_ASISTENCIA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."SIN_TRAMITE_ASISTENCIA_PK" ON "AXIS"."SIN_TRAMITE_ASISTENCIA" ("NSINIES", "NTRAMTE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
