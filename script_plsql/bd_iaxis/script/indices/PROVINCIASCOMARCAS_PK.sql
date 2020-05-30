--------------------------------------------------------
--  DDL for Index PROVINCIASCOMARCAS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."PROVINCIASCOMARCAS_PK" ON "AXIS"."PROVINCIASCOMARCAS" ("CCOMARCAS", "CPROVIN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
