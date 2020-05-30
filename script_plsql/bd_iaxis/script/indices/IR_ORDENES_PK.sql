--------------------------------------------------------
--  DDL for Index IR_ORDENES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."IR_ORDENES_PK" ON "AXIS"."IR_ORDENES" ("CEMPRES", "SORDEN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
