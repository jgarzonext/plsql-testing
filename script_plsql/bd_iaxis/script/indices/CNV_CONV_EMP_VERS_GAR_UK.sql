--------------------------------------------------------
--  DDL for Index CNV_CONV_EMP_VERS_GAR_UK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."CNV_CONV_EMP_VERS_GAR_UK" ON "AXIS"."CNV_CONV_EMP_VERS_GAR" ("IDVERSION", "CGARANT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
