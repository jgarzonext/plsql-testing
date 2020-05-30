--------------------------------------------------------
--  DDL for Index DIR_DOMI_DIR_PORT_FK
--------------------------------------------------------

  CREATE INDEX "AXIS"."DIR_DOMI_DIR_PORT_FK" ON "AXIS"."DIR_DOMICILIOS" ("IDFINCA", "IDPORTAL", "IDGEODIR") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
