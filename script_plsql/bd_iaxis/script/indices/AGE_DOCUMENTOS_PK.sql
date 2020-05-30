--------------------------------------------------------
--  DDL for Index AGE_DOCUMENTOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."AGE_DOCUMENTOS_PK" ON "AXIS"."AGE_DOCUMENTOS" ("CAGENTE", "IDDOCGEDOX") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
