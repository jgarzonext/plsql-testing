--------------------------------------------------------
--  DDL for Index PROVMAT_NMOVIMI_CONF_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."PROVMAT_NMOVIMI_CONF_PK" ON "AXIS"."PROVMAT_NMOVIMI_CONF" ("SSEGURO", "NRIESGO", "CGARANT", "NMOVIMI", "FINIEFE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
