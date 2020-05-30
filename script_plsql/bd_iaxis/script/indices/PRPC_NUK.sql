--------------------------------------------------------
--  DDL for Index PRPC_NUK
--------------------------------------------------------

  CREATE INDEX "AXIS"."PRPC_NUK" ON "AXIS"."PRPC" ("CEMPRES", "FCALCUL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
