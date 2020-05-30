--------------------------------------------------------
--  DDL for Index PK_AGENTES_CORREO_ENV
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."PK_AGENTES_CORREO_ENV" ON "AXIS"."AGENTES_CORREO_ENV" ("SCORREO", "CAGENTE", "SPROCES") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
