--------------------------------------------------------
--  DDL for Index COMISADC_RESULT_PREV_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."COMISADC_RESULT_PREV_PK" ON "AXIS"."COMISADC_RESULT_PREV" ("SPROCES", "FCIERRE", "SSEGURO", "NMOVIMI", "NRECIBO", "CTIPCOM", "CVIGENTE", "CGARANT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
