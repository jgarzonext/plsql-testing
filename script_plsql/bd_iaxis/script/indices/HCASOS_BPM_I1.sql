--------------------------------------------------------
--  DDL for Index HCASOS_BPM_I1
--------------------------------------------------------

  CREATE INDEX "AXIS"."HCASOS_BPM_I1" ON "AXIS"."HCASOS_BPM" ("CEMPRES", "NNUMCASO", "FHIST") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
