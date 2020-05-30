--------------------------------------------------------
--  DDL for Index PK_AGENTES_CONVENIO_PROD
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."PK_AGENTES_CONVENIO_PROD" ON "AXIS"."AGENTES_CONVENIO_PROD" ("CAGENTE", "SPRODUC", "FMOVINI") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
