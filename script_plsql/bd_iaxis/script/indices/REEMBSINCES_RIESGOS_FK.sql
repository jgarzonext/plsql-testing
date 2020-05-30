--------------------------------------------------------
--  DDL for Index REEMBSINCES_RIESGOS_FK
--------------------------------------------------------

  CREATE INDEX "AXIS"."REEMBSINCES_RIESGOS_FK" ON "AXIS"."REEMBSINCES" ("SSEGURO", "NRIESGO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
