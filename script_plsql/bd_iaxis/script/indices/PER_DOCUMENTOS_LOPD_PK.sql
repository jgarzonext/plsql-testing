--------------------------------------------------------
--  DDL for Index PER_DOCUMENTOS_LOPD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."PER_DOCUMENTOS_LOPD_PK" ON "AXIS"."PER_DOCUMENTOS_LOPD" ("SPERSON", "CAGENTE", "IDDOCGEDOX") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
