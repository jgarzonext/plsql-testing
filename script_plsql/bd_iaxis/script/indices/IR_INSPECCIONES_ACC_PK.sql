--------------------------------------------------------
--  DDL for Index IR_INSPECCIONES_ACC_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."IR_INSPECCIONES_ACC_PK" ON "AXIS"."IR_INSPECCIONES_ACC" ("CEMPRES", "SORDEN", "NINSPECCION", "CACCESORIO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
