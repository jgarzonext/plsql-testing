--------------------------------------------------------
--  DDL for Index IR_INSPECCIONES_DVEH_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."IR_INSPECCIONES_DVEH_PK" ON "AXIS"."IR_INSPECCIONES_DVEH" ("CEMPRES", "SORDEN", "NINSPECCION") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
