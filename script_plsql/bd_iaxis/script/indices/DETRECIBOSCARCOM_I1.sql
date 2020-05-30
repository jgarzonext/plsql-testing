--------------------------------------------------------
--  DDL for Index DETRECIBOSCARCOM_I1
--------------------------------------------------------

  CREATE INDEX "AXIS"."DETRECIBOSCARCOM_I1" ON "AXIS"."DETRECIBOSCARCOM" ("SPROCES", "NRECIBO", "CCONCEP", "NRIESGO", "CGARANT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
