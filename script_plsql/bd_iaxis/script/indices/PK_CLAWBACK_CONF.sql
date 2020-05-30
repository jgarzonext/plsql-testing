--------------------------------------------------------
--  DDL for Index PK_CLAWBACK_CONF
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."PK_CLAWBACK_CONF" ON "AXIS"."CLAWBACK_CONF" ("CEMPRES", "NMES_I", "NMES_F", "PANULAC") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
