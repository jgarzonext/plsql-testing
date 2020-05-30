--------------------------------------------------------
--  DDL for Index IBNR_SAM_SIN_PAPAG_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."IBNR_SAM_SIN_PAPAG_PK" ON "AXIS"."IBNR_SAM_SIN_PAPAG" ("SPROCES", "FCALCUL_I", "CTIPO", "CMODO", "CGARANT", "SPRODUC") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
