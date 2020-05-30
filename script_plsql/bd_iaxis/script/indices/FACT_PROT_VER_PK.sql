--------------------------------------------------------
--  DDL for Index FACT_PROT_VER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."FACT_PROT_VER_PK" ON "AXIS"."FACT_PROT_VER" ("SPRODUC", "VERSION") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
