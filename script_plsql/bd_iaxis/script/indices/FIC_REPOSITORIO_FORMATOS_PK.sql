--------------------------------------------------------
--  DDL for Index FIC_REPOSITORIO_FORMATOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."FIC_REPOSITORIO_FORMATOS_PK" ON "AXIS"."FIC_REPOSITORIO_FORMATOS" ("TGESTOR", "TFORMAT", "NEJERCI", "TPERIOD", "TDIASEM", "TBLQDAT", "NSUBCUN", "NCOLUMN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
