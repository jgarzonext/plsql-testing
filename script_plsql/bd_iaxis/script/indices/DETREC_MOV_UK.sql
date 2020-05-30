--------------------------------------------------------
--  DDL for Index DETREC_MOV_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."DETREC_MOV_UK" ON "AXIS"."DETRECIBOS_FCAMBIO" ("NRECIBO", "CCONCEP", "CGARANT", "NRIESGO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
