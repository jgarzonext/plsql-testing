--------------------------------------------------------
--  DDL for Index ESTMANDATOS_NUK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."ESTMANDATOS_NUK" ON "AXIS"."ESTMANDATOS" ("SPERSON", "CNORDBAN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
