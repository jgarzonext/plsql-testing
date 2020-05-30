--------------------------------------------------------
--  DDL for Index SIN_CONPAG_PROD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."SIN_CONPAG_PROD_PK" ON "AXIS"."SIN_CONPAG_PROD" ("CCONPAG", "SPRODUC") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
