--------------------------------------------------------
--  DDL for Index IND_DET_MOV_I1
--------------------------------------------------------

  CREATE INDEX "AXIS"."IND_DET_MOV_I1" ON "AXIS"."DETRECIBOS_FCAMBIO" ("NRECIBO", "CCONCEP") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
