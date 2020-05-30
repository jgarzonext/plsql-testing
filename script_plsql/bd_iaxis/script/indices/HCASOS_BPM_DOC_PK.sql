--------------------------------------------------------
--  DDL for Index HCASOS_BPM_DOC_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."HCASOS_BPM_DOC_PK" ON "AXIS"."HCASOS_BPM_DOC" ("CEMPRES", "NNUMCASO", "IDGESTORDOCBPM", "FHIST") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
