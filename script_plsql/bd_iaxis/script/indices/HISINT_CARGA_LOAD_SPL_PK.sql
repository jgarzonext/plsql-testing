--------------------------------------------------------
--  DDL for Index HISINT_CARGA_LOAD_SPL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."HISINT_CARGA_LOAD_SPL_PK" ON "AXIS"."HISINT_CARGA_LOAD_SPL" ("NLINEA", "PROCESO", "CDARCHI", "CUSUARI", "FMODIFI") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
