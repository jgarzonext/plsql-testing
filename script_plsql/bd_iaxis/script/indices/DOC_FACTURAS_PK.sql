--------------------------------------------------------
--  DDL for Index DOC_FACTURAS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."DOC_FACTURAS_PK" ON "AXIS"."DOC_FACTURA" ("NSINIES") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
