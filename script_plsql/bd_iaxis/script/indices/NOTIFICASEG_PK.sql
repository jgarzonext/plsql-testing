--------------------------------------------------------
--  DDL for Index NOTIFICASEG_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."NOTIFICASEG_PK" ON "AXIS"."NOTIFICASEG" ("SSEGURO", "CTIPO", "FECHA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
