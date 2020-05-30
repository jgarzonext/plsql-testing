--------------------------------------------------------
--  DDL for Index COMISADC_RESULT_PREV_NPK
--------------------------------------------------------

  CREATE INDEX "AXIS"."COMISADC_RESULT_PREV_NPK" ON "AXIS"."COMISADC_RESULT_PREV" ("CTIPCOM", "SSEGURO", "NMOVIMI", "NRECIBO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
