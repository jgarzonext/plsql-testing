--------------------------------------------------------
--  DDL for Index PER_ANTIGUEDAD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."PER_ANTIGUEDAD_PK" ON "AXIS"."PER_ANTIGUEDAD" ("SPERSON", "CAGRUPA", "NORDEN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
