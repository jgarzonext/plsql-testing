--------------------------------------------------------
--  DDL for Index HIS_PRESTAMOS_I02
--------------------------------------------------------

  CREATE INDEX "AXIS"."HIS_PRESTAMOS_I02" ON "AXIS"."HIS_PRESTAMOS" ("CTAPRES", TO_CHAR("FALTA",'yyyymm')) 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
