--------------------------------------------------------
--  DDL for Index PERLOPD_CONTACTOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."PERLOPD_CONTACTOS_PK" ON "AXIS"."PERLOPD_CONTACTOS" ("SPERSON", "CAGENTE", "CMODCON", "NUM_LOPD") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
