--------------------------------------------------------
--  DDL for Index CTASEGURO_SHW_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."CTASEGURO_SHW_PK" ON "AXIS"."CTASEGURO_SHADOW" ("SSEGURO", "FCONTAB", "NNUMLIN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
