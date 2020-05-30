--------------------------------------------------------
--  DDL for Index SIN_TRAMITA_DOCUMENTO_LOPD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."SIN_TRAMITA_DOCUMENTO_LOPD_PK" ON "AXIS"."SIN_TRAMITA_DOCUMENTO_LOPD" ("NSINIES", "NTRAMIT", "NDOCUME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
