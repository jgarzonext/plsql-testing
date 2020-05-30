--------------------------------------------------------
--  DDL for Index HIS_EST_CHEQUE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."HIS_EST_CHEQUE_PK" ON "AXIS"."HIS_EST_CHEQUE" ("SEQCAJA", "NCHEQUE", "CESTCHQ", "CESTCHQ_ANT", "FMOVIMIENTO", "FESTADO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
