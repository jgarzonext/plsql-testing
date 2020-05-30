--------------------------------------------------------
--  DDL for Index REEMBSINCES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."REEMBSINCES_PK" ON "AXIS"."REEMBSINCES" ("NREEMB", "NFACT", "NLINEA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
