--------------------------------------------------------
--  DDL for Index PAGOS_MASIVOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."PAGOS_MASIVOS_PK" ON "AXIS"."PAGOS_MASIVOS" ("CAGENTE", "SPROCES", "TFICHERO", "CMONEOP") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
