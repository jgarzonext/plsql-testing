--------------------------------------------------------
--  DDL for Index SIN_IMP_CALCULO_LOG_DET_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."SIN_IMP_CALCULO_LOG_DET_PK" ON "AXIS"."SIN_IMP_CALCULO_LOG_DET" ("SIMPLOG", "CTIPGAS", "CCODIMP") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
