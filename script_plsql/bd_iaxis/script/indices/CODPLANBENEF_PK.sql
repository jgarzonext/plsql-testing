--------------------------------------------------------
--  DDL for Index CODPLANBENEF_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."CODPLANBENEF_PK" ON "AXIS"."CODPLANBENEF" ("CEMPRES", "CPLAN", "NORDEN", "CACCION", "CGARANT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
