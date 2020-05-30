--------------------------------------------------------
--  DDL for Index PK_REMESA_SEPA_PAGO_DETALLE
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."PK_REMESA_SEPA_PAGO_DETALLE" ON "AXIS"."REMESAS_SEPA_PAGO_DET" ("IDREMESASEPA", "IDPAGO", "IDDETALLE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
