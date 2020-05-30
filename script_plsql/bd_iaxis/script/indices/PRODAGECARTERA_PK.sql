--------------------------------------------------------
--  DDL for Index PRODAGECARTERA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."PRODAGECARTERA_PK" ON "AXIS"."PRODAGECARTERA" ("CEMPRES", "SPRODUC", "CAGENTE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
