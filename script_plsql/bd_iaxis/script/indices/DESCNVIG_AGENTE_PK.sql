--------------------------------------------------------
--  DDL for Index DESCNVIG_AGENTE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."DESCNVIG_AGENTE_PK" ON "AXIS"."DESCVIG_AGENTE" ("CAGENTE", "CDESC", "FINIVIG") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
