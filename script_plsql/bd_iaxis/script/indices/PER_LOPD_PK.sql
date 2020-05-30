--------------------------------------------------------
--  DDL for Index PER_LOPD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."PER_LOPD_PK" ON "AXIS"."PER_LOPD" ("SPERSON", "CAGENTE", "NORDEN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
