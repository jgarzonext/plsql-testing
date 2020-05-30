--------------------------------------------------------
--  DDL for Index LOG_MARCAS_POLIZAS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."LOG_MARCAS_POLIZAS_PK" ON "AXIS"."LOG_MARCAS_POLIZAS" ("SPROCES", "SSEGURO", "SPERSON", "CMARCA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
