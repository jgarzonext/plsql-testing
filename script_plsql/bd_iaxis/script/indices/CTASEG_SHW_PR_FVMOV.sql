--------------------------------------------------------
--  DDL for Index CTASEG_SHW_PR_FVMOV
--------------------------------------------------------

  CREATE INDEX "AXIS"."CTASEG_SHW_PR_FVMOV" ON "AXIS"."CTASEGURO_PREVIO_SHW" ("SSEGURO", "FVALMOV", "CMOVIMI") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
