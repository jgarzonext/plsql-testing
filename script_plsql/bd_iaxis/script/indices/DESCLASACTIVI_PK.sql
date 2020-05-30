--------------------------------------------------------
--  DDL for Index DESCLASACTIVI_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."DESCLASACTIVI_PK" ON "AXIS"."DESCLASACTIVI" ("CCLASACT", "CIDIOMA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
