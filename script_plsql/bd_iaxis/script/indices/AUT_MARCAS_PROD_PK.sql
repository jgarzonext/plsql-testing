--------------------------------------------------------
--  DDL for Index AUT_MARCAS_PROD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."AUT_MARCAS_PROD_PK" ON "AXIS"."AUT_MARCAS_PROD" ("CEMPRES", "SPRODUC", "CVERSION") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
