--------------------------------------------------------
--  DDL for Index PROVMAT_CIERRE_CONF_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."PROVMAT_CIERRE_CONF_PK" ON "AXIS"."PROVMAT_CIERRE_CONF" ("SSEGURO", "NRIESGO", "CGARANT", "FCALCUL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
