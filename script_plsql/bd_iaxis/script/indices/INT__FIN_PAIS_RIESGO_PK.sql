--------------------------------------------------------
--  DDL for Index INT_ FIN_PAIS_RIESGO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."INT_ FIN_PAIS_RIESGO_PK" ON "AXIS"."INT_FIN_PAIS_RIESGO" ("SPROCES", "NLINEA", "NCARGA", "CPAIS") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
