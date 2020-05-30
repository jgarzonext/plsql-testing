--------------------------------------------------------
--  DDL for Index IBNR_SAM_FACAJUS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."IBNR_SAM_FACAJUS_PK" ON "AXIS"."IBNR_SAM_FACAJUS" ("SPROCES", "CTIPO", "CMODO", "FCALCUL_I", "FCALCUL_J") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
