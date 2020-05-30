--------------------------------------------------------
--  DDL for Index AUTDISRIESGOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."AUTDISRIESGOS_PK" ON "AXIS"."AUTDISRIESGOS" ("SSEGURO", "NRIESGO", "NMOVIMI", "CVERSION", "CDISPOSITIVO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
