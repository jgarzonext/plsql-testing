--------------------------------------------------------
--  DDL for Index CAMPAAGEDOC_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."CAMPAAGEDOC_PK" ON "AXIS"."CAMPAAGEDOC" ("CCODIGO", "CAGENTE", "CDOCUME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
