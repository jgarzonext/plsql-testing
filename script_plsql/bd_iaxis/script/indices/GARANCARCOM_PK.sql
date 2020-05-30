--------------------------------------------------------
--  DDL for Index GARANCARCOM_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."GARANCARCOM_PK" ON "AXIS"."GARANCARCOM" ("SSEGURO", "NRIESGO", "CGARANT", "SPROCES", "FINIEFE", "CMODCOM", "NINIALT", "CAGEVEN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
