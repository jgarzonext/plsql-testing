--------------------------------------------------------
--  DDL for Index FICO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."FICO_PK" ON "AXIS"."FICO" ("CIF") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
