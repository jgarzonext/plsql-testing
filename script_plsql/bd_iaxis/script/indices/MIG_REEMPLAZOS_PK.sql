--------------------------------------------------------
--  DDL for Index MIG_REEMPLAZOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."MIG_REEMPLAZOS_PK" ON "AXIS"."MIG_REEMPLAZOS" ("NCARGA", "SSEGURO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
