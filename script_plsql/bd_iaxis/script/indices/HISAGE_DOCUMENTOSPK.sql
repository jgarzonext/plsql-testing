--------------------------------------------------------
--  DDL for Index HISAGE_DOCUMENTOSPK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."HISAGE_DOCUMENTOSPK" ON "AXIS"."HISAGE_DOCUMENTOS" ("CAGENTE", "IDDOCGEDOX", "FUSUMOD") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
