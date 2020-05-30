--------------------------------------------------------
--  DDL for Index PROD_ACTIVI_ACCESORIO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."PROD_ACTIVI_ACCESORIO_PK" ON "AXIS"."PROD_ACTIVI_ACCESORIO" ("SPRODUC", "CACTIVI", "CACCESORIO", "CTIPACC") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
