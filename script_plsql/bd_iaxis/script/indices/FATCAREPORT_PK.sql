--------------------------------------------------------
--  DDL for Index FATCAREPORT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."FATCAREPORT_PK" ON "AXIS"."FATCAREPORT" ("SPROCES", "NORDEN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
