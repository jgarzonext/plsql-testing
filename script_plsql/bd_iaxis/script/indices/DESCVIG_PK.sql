--------------------------------------------------------
--  DDL for Index DESCVIG_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."DESCVIG_PK" ON "AXIS"."DESCVIG" ("CDESC", "FINIVIG") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
