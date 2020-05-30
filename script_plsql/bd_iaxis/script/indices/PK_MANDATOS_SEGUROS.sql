--------------------------------------------------------
--  DDL for Index PK_MANDATOS_SEGUROS
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."PK_MANDATOS_SEGUROS" ON "AXIS"."MANDATOS_SEGUROS" ("CMANDATO", "NUMFOLIO", "SSEGURO", "NMOVIMI") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
