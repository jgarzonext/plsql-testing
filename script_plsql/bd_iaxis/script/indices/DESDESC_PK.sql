--------------------------------------------------------
--  DDL for Index DESDESC_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."DESDESC_PK" ON "AXIS"."DESDESC" ("CIDIOMA", "CDESC") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
