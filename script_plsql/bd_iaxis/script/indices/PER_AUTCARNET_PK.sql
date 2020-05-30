--------------------------------------------------------
--  DDL for Index PER_AUTCARNET_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."PER_AUTCARNET_PK" ON "AXIS"."PER_AUTCARNET" ("SPERSON", "CAGENTE", "CTIPCAR") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
