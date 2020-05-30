--------------------------------------------------------
--  DDL for Index AGE_REFERENCIAS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."AGE_REFERENCIAS_PK" ON "AXIS"."AGE_REFERENCIAS" ("CAGENTE", "NORDREFERENCIA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
