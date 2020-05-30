--------------------------------------------------------
--  DDL for Index ESTASEGURADOSMES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."ESTASEGURADOSMES_PK" ON "AXIS"."ESTASEGURADOSMES" ("SSEGURO", "NMOVIMI", "NRIESGO", "NMES", "NANYO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
