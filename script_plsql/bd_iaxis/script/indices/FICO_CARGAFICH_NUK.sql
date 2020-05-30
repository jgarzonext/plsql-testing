--------------------------------------------------------
--  DDL for Index FICO_CARGAFICH_NUK
--------------------------------------------------------

  CREATE INDEX "AXIS"."FICO_CARGAFICH_NUK" ON "AXIS"."FICO" ("PROCESO", "NLINEA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
