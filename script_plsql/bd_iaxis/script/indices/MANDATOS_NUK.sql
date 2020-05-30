--------------------------------------------------------
--  DDL for Index MANDATOS_NUK
--------------------------------------------------------

  CREATE INDEX "AXIS"."MANDATOS_NUK" ON "AXIS"."MANDATOS" ("SPERSON", "CNORDBAN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
