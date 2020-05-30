--------------------------------------------------------
--  DDL for Index ESTAUTDISRIESGOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."ESTAUTDISRIESGOS_PK" ON "AXIS"."ESTAUTDISRIESGOS" ("SSEGURO", "NRIESGO", "NMOVIMI", "CVERSION", "CDISPOSITIVO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
