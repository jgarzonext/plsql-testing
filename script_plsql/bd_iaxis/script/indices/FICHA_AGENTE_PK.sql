--------------------------------------------------------
--  DDL for Index FICHA_AGENTE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."FICHA_AGENTE_PK" ON "AXIS"."FICHA_AGENTE" ("CAGENTE", "SPROCES") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
