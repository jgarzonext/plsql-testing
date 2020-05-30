--------------------------------------------------------
--  DDL for Index AUT_MARCAS_PROD_I1
--------------------------------------------------------

  CREATE INDEX "AXIS"."AUT_MARCAS_PROD_I1" ON "AXIS"."AUT_MARCAS_PROD" ("CMODELO", "CMARCA", "CEMPRES") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
