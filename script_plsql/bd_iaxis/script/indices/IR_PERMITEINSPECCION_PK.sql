--------------------------------------------------------
--  DDL for Index IR_PERMITEINSPECCION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."IR_PERMITEINSPECCION_PK" ON "AXIS"."IR_PERMITEINSPECCION" ("CEMPRES", "SPRODUC", "CAGENTE", "CTIPIDE", "NNUMIDE", "NPOLIZA", "NCERTIF") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
