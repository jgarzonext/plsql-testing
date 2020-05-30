--------------------------------------------------------
--  DDL for Index DETRECIBOSCOM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."DETRECIBOSCOM_PK" ON "AXIS"."DETRECIBOSCOM" ("NRECIBO", "NMOVIMC", "NNUMLIN", "CCONCEP", "CTIPCOM", "CGARANT", "NRIESGO", "CAGEVEN", "CMODCOM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
