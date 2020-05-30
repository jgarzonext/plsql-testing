--------------------------------------------------------
--  DDL for Index IBNR_RAM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."IBNR_RAM_PK" ON "AXIS"."IBNR_RAM" ("SPROCES", "CRAMO", "SPRODUC") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
