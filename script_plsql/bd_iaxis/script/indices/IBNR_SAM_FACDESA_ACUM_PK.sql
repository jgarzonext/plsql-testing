--------------------------------------------------------
--  DDL for Index IBNR_SAM_FACDESA_ACUM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."IBNR_SAM_FACDESA_ACUM_PK" ON "AXIS"."IBNR_SAM_FACDESA_ACUM" ("SPROCES", "FCALCUL_I", "CTIPO", "CMODO", "CGARANT", "SPRODUC") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
