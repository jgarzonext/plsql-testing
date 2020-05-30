--------------------------------------------------------
--  DDL for Index HISCNV_CONV_EMP_VERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."HISCNV_CONV_EMP_VERS_PK" ON "AXIS"."HISCNV_CONV_EMP_VERS" ("IDVERSION", "NLIN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
