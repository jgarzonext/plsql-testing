--------------------------------------------------------
--  DDL for Index PK_MANDATOS_MASIVA
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."PK_MANDATOS_MASIVA" ON "AXIS"."MANDATOS_MASIVA" ("NOMINA", "NUMFOLIO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
