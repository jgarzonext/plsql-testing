--------------------------------------------------------
--  DDL for Index IBNR_SAM_PDESACU_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."IBNR_SAM_PDESACU_PK" ON "AXIS"."IBNR_SAM_PDESACU" ("SPROCES", "FCALCUL_I", "CTIPO", "CMODO", "CGARANT", "SPRODUC") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
