--------------------------------------------------------
--  DDL for Index CTACLIENTE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."CTACLIENTE_PK" ON "AXIS"."CTACLIENTE" ("CEMPRES", "SPERSON", "SSEGURO", "NNUMLIN", "SPRODUC") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
