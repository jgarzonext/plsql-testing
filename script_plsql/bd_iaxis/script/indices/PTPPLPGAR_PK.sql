--------------------------------------------------------
--  DDL for Index PTPPLPGAR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."PTPPLPGAR_PK" ON "AXIS"."PTPPLPGAR" ("SPROCES", "CRAMDGS", "CRAMO", "CMODALI", "CTIPSEG", "CCOLECT", "SSEGURO", "NSINIES", "CGARANT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
