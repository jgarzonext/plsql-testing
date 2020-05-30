--------------------------------------------------------
--  DDL for Index CALCSOBRECOMIS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."CALCSOBRECOMIS_PK" ON "AXIS"."CALCSOBRECOMIS" ("CAGENTE", "SPRODUC", "FINICIO", "FFIN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
