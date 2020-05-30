--------------------------------------------------------
--  DDL for Index CASOS_BPM_DOC_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."CASOS_BPM_DOC_PK" ON "AXIS"."CASOS_BPM_DOC" ("CEMPRES", "NNUMCASO", "IDGESTORDOCBPM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
