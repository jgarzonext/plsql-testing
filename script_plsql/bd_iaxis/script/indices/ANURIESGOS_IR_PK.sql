--------------------------------------------------------
--  DDL for Index ANURIESGOS_IR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."ANURIESGOS_IR_PK" ON "AXIS"."ANURIESGOS_IR" ("SSEGURO", "NRIESGO", "NMOVIMI") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
