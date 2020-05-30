--------------------------------------------------------
--  DDL for Index SIN_TRAMITA_PRERESFND_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."SIN_TRAMITA_PRERESFND_PK" ON "AXIS"."SIN_TRAMITA_PRERESERVA_FND" ("NSINIES", "NTRAMIT", "CCESTA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
