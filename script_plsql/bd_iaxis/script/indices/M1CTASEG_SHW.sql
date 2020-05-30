--------------------------------------------------------
--  DDL for Index M1CTASEG_SHW
--------------------------------------------------------

  CREATE INDEX "AXIS"."M1CTASEG_SHW" ON "AXIS"."CTASEGURO_SHADOW" ("NRECIBO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
