--------------------------------------------------------
--  DDL for Index IBNR_SAM_SINACUMAJUS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."IBNR_SAM_SINACUMAJUS_PK" ON "AXIS"."IBNR_SAM_SINACUMAJUS" ("SPROCES", "CTIPO", "CMODO", "FCALCUL_I", "FCALCUL_J", "CGARANT", "SPRODUC") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
