--------------------------------------------------------
--  DDL for Index SIN_DEFRAUDADORES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."SIN_DEFRAUDADORES_PK" ON "AXIS"."SIN_DEFRAUDADORES" ("NSINIES", "NDEFRAU") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
