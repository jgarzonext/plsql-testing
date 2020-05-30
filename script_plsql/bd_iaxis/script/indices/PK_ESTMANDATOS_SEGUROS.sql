--------------------------------------------------------
--  DDL for Index PK_ESTMANDATOS_SEGUROS
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."PK_ESTMANDATOS_SEGUROS" ON "AXIS"."ESTMANDATOS_SEGUROS" ("CMANDATO", "NUMFOLIO", "SSEGURO", "NMOVIMI") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
