--------------------------------------------------------
--  DDL for Index INT_DESEVIDENCIAS_UDW_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."INT_DESEVIDENCIAS_UDW_PK" ON "AXIS"."DESEVIDENCIAS_UDW" ("CEMPRES", "CEVIDEN", "CIDIOMA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
