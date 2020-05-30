--------------------------------------------------------
--  DDL for Index IBNR_SAM_SIN_PEND_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."IBNR_SAM_SIN_PEND_PK" ON "AXIS"."IBNR_SAM_SIN_PEND" ("SPROCES", "FCALCUL_I", "FCALCUL_J", "CTIPO", "CMODO", "CGARANT", "SPRODUC") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
