--------------------------------------------------------
--  DDL for Index PK_REMESAS_SEPA_PAGO
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."PK_REMESAS_SEPA_PAGO" ON "AXIS"."REMESAS_SEPA_PAGO" ("IDREMESASEPA", "IDPAGO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
