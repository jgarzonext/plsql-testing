--------------------------------------------------------
--  DDL for Index SIN_TRAMITA_PRERESERVA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."SIN_TRAMITA_PRERESERVA_PK" ON "AXIS"."SIN_TRAMITA_PRERESERVA" ("NSINIES", "NTRAMIT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
