--------------------------------------------------------
--  DDL for Index ANURIESGOS_IR_ORDENES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."ANURIESGOS_IR_ORDENES_PK" ON "AXIS"."ANURIESGOS_IR_ORDENES" ("SSEGURO", "NRIESGO", "NMOVIMI", "CEMPRES", "SORDEN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
