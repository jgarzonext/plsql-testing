--------------------------------------------------------
--  DDL for Index AGE_CONTACTOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."AGE_CONTACTOS_PK" ON "AXIS"."AGE_CONTACTOS" ("CAGENTE", "NORDEN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
