--------------------------------------------------------
--  DDL for Index RIE_INDICADORES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."RIE_INDICADORES_PK" ON "AXIS"."RIE_INDICADORES" ("SINDRIESGO", "NMOVIMI") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
