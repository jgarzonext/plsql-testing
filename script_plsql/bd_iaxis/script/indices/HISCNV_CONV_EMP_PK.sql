--------------------------------------------------------
--  DDL for Index HISCNV_CONV_EMP_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."HISCNV_CONV_EMP_PK" ON "AXIS"."HISCNV_CONV_EMP" ("IDCONV", "NLIN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
