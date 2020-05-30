--------------------------------------------------------
--  DDL for Index BF_LISTLIBRE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AXIS"."BF_LISTLIBRE_PK" ON "AXIS"."BF_LISTLIBRE" ("CEMPRES", "ID_LISTLIBRE", "CVALOR", "CATRIBU") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "AXIS" ;
