--------------------------------------------------------
--  DDL for Index MIG_VALIDACION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."MIG_VALIDACION_PK" ON "AXIS"."MIG_VALIDACION" ("SPRODUC", "NORDEN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
