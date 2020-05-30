--------------------------------------------------------
--  DDL for Index DIR_PORTALES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."DIR_PORTALES_PK" ON "AXIS"."DIR_PORTALES" ("IDFINCA", "IDPORTAL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
