--------------------------------------------------------
--  DDL for Index IBNR_SAM_UPE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."IBNR_SAM_UPE_PK" ON "AXIS"."IBNR_SAM_UPE" ("SPROCES", "FCALCUL_I", "FCALCUL_J", "CTIPO", "CMODO", "CGARANT", "SPRODUC") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
