--------------------------------------------------------
--  DDL for Index COMPANIAS_GASTOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."COMPANIAS_GASTOS_PK" ON "AXIS"."COMPANIAS_GASTOS" ("CEMPRES", "CCOMPANI", "SPRODUC", "FINIGAC") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
