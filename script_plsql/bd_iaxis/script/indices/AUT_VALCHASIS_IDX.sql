--------------------------------------------------------
--  DDL for Index AUT_VALCHASIS_IDX
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."AUT_VALCHASIS_IDX" ON "AXIS"."AUT_VALCHASIS" ("CMARCA", "CZONAGEO", "CPAIS", "CFABRICANTE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
