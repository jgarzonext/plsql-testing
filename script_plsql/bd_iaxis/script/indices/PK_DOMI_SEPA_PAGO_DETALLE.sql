--------------------------------------------------------
--  DDL for Index PK_DOMI_SEPA_PAGO_DETALLE
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."PK_DOMI_SEPA_PAGO_DETALLE" ON "AXIS"."DOMI_SEPA_PAGO_DETALLE" ("IDDOMISEPA", "IDPAGO", "IDDETALLE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
