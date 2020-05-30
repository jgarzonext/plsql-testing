--------------------------------------------------------
--  DDL for Index LOG_ADJUNTO_CORREO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."LOG_ADJUNTO_CORREO_PK" ON "AXIS"."LOG_ADJUNTO_CORREO" ("SEQLOGCORREO", "IDDOC") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
