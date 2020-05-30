--------------------------------------------------------
--  DDL for Index PTPPLPGARPRE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."PTPPLPGARPRE_PK" ON "AXIS"."PTPPLPGAR_PREVIO" ("SPROCES", "CRAMDGS", "CRAMO", "CMODALI", "CTIPSEG", "CCOLECT", "SSEGURO", "NSINIES", "CGARANT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
