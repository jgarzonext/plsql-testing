--------------------------------------------------------
--  DDL for Index ANUCASOS_BPMSEG_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."ANUCASOS_BPMSEG_PK" ON "AXIS"."ANUCASOS_BPMSEG" ("SSEGURO", "NMOVIMI", "CEMPRES", "NNUMCASO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
