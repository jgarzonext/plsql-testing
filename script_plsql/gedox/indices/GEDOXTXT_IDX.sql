--------------------------------------------------------
--  DDL for Index GEDOXTXT_IDX
--------------------------------------------------------

  CREATE INDEX "GEDOX"."GEDOXTXT_IDX" ON "GEDOX"."GEDOX" ("TDESCRIP") 
   INDEXTYPE IS "CTXSYS"."CONTEXT"  PARAMETERS ('datastore CTXSYS.TEXTO storage CTXSYS.CTX_STORE_TBS');
