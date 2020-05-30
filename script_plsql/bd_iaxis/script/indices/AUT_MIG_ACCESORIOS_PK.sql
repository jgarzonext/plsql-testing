--------------------------------------------------------
--  DDL for Index AUT_MIG_ACCESORIOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."AUT_MIG_ACCESORIOS_PK" ON "AXIS"."AUT_MIG_ACCESORIOS" ("CEMPRES", "CMATRIC", "CACCESORIO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
