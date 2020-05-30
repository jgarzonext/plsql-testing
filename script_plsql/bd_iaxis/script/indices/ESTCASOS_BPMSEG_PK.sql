--------------------------------------------------------
--  DDL for Index ESTCASOS_BPMSEG_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."ESTCASOS_BPMSEG_PK" ON "AXIS"."ESTCASOS_BPMSEG" ("SSEGURO", "CEMPRES", "NNUMCASO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
