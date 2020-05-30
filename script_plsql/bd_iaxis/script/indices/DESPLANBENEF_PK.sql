--------------------------------------------------------
--  DDL for Index DESPLANBENEF_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."DESPLANBENEF_PK" ON "AXIS"."DESPLANBENEF" ("CPLAN", "CIDIOMA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
