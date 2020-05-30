--------------------------------------------------------
--  DDL for Index PK_PPCC_EXCEP
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."PK_PPCC_EXCEP" ON "AXIS"."PPPC_EXCEP" ("NRECIBO", "SSEGURO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
