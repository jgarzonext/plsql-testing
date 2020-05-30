--------------------------------------------------------
--  DDL for Index FACT_PROT_DET_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."FACT_PROT_DET_PK" ON "AXIS"."FACT_PROT_DET" ("SPRODUC", "VERSION", "CGARANT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
