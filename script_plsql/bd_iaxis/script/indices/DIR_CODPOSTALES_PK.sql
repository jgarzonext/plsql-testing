--------------------------------------------------------
--  DDL for Index DIR_CODPOSTALES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."DIR_CODPOSTALES_PK" ON "AXIS"."DIR_CODPOSTALES" ("CPOSTAL", "IDLOCAL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
