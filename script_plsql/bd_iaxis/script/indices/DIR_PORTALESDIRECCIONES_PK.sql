--------------------------------------------------------
--  DDL for Index DIR_PORTALESDIRECCIONES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."DIR_PORTALESDIRECCIONES_PK" ON "AXIS"."DIR_PORTALESDIRECCIONES" ("IDFINCA", "IDPORTAL", "IDGEODIR") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
