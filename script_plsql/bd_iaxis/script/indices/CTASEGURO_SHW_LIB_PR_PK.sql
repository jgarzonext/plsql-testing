--------------------------------------------------------
--  DDL for Index CTASEGURO_SHW_LIB_PR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."CTASEGURO_SHW_LIB_PR_PK" ON "AXIS"."CTASEGURO_LIBRETA_PREVIO_SHW" ("SSEGURO", "FCONTAB", "NNUMLIN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
