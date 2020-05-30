--------------------------------------------------------
--  DDL for Index AUT_MIG_DISPOSITIVOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."AUT_MIG_DISPOSITIVOS_PK" ON "AXIS"."AUT_MIG_DISPOSITIVOS" ("CEMPRES", "CMATRIC", "CDISPOSITIVO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
