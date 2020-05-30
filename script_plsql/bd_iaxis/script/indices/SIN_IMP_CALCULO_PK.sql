--------------------------------------------------------
--  DDL for Index SIN_IMP_CALCULO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."SIN_IMP_CALCULO_PK" ON "AXIS"."SIN_IMP_CALCULO" ("CCONCEP", "CCODIMP", "CTIPPER", "NORDIMP") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
