--------------------------------------------------------
--  DDL for Index RECIBO_DOCUMENTOS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."RECIBO_DOCUMENTOS_PK" ON "AXIS"."RECIBO_DOCUMENTOS" ("NRECIBO", "NDOCUME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
