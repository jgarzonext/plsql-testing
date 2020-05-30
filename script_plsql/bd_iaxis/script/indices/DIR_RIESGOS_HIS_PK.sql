--------------------------------------------------------
--  DDL for Index DIR_RIESGOS_HIS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."DIR_RIESGOS_HIS_PK" ON "AXIS"."DIR_RIESGOS_HIS" ("SSEGURO", "NRIESGO", "IDDOMICINEW", "FULTACT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
