--------------------------------------------------------
--  DDL for Index DETRECIBOSCARCOM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."DETRECIBOSCARCOM_PK" ON "AXIS"."DETRECIBOSCARCOM" ("NRECIBO", "CCONCEP", "CTIPCOM", "CGARANT", "NRIESGO", "CAGEVEN", "CMODCOM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
