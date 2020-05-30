--------------------------------------------------------
--  DDL for Index COMISADC_RESULT_NPK
--------------------------------------------------------

  CREATE INDEX "AXIS"."COMISADC_RESULT_NPK" ON "AXIS"."COMISADC_RESULT" ("CTIPCOM", "SSEGURO", "NMOVIMI", "NRECIBO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
