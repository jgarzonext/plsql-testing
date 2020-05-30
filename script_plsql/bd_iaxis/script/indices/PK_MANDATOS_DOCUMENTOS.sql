--------------------------------------------------------
--  DDL for Index PK_MANDATOS_DOCUMENTOS
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."PK_MANDATOS_DOCUMENTOS" ON "AXIS"."MANDATOS_DOCUMENTOS" ("SMANDOC", "IDDOCGEDOX") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
