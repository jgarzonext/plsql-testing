--------------------------------------------------------
--  DDL for Index IX1_INT_ENVIO_PERSDIF
--------------------------------------------------------

  CREATE INDEX "AXIS"."IX1_INT_ENVIO_PERSDIF" ON "AXIS"."INT_ENVIO_PERSDIF" ("EMPRESA", "SIP", "PROCESADO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
