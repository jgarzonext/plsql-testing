--------------------------------------------------------
--  DDL for Index DOCUMRECIBOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."DOCUMRECIBOS_PK" ON "AXIS"."DOCUMRECIBOS" ("SSEGURO", "NRECIBO", "IDDOCGEDOX") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
