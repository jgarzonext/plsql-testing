--------------------------------------------------------
--  DDL for Index REP_RETRIBUCION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."REP_RETRIBUCION_PK" ON "AXIS"."REP_RETRIBUCION" ("SPERSON", "SPRODUC") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
