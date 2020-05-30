--------------------------------------------------------
--  DDL for Index FIN_INDICA_SECTOR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."FIN_INDICA_SECTOR_PK" ON "AXIS"."FIN_INDICA_SECTOR" ("CCIIU", "NMOVIMI") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
