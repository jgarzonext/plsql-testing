--------------------------------------------------------
--  DDL for Index PK_DOMI_SEPA_PAGO
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."PK_DOMI_SEPA_PAGO" ON "AXIS"."DOMI_SEPA_PAGO" ("IDDOMISEPA", "IDPAGO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
