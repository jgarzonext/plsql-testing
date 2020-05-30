--------------------------------------------------------
--  DDL for Index CTASEG_SHW_FMOV
--------------------------------------------------------

  CREATE INDEX "AXIS"."CTASEG_SHW_FMOV" ON "AXIS"."CTASEGURO_SHADOW" ("SSEGURO", "FFECMOV", "CMOVIMI") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
