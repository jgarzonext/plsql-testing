--------------------------------------------------------
--  DDL for Index HISPERLOPD_CONTACTOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."HISPERLOPD_CONTACTOS_PK" ON "AXIS"."HISPERLOPD_CONTACTOS" ("SPERSON", "CMODCON", "NORDEN", "NUM_LOPD") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
