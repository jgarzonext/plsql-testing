--------------------------------------------------------
--  DDL for Index CTASEG_SHW_FVMOV
--------------------------------------------------------

  CREATE INDEX "AXIS"."CTASEG_SHW_FVMOV" ON "AXIS"."CTASEGURO_SHADOW" ("SSEGURO", "FVALMOV", "CMOVIMI") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
