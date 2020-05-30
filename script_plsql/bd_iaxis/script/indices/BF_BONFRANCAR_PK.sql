--------------------------------------------------------
--  DDL for Index BF_BONFRANCAR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."BF_BONFRANCAR_PK" ON "AXIS"."BF_BONFRANCAR" ("SSEGURO", "NRIESGO", "CGRUP", "CSUBGRUP", "CNIVEL", "CVERSION", "NMOVIMI", "SPROCES") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
