--------------------------------------------------------
--  DDL for View VIEW_RESUMENCTASEGURO
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."VIEW_RESUMENCTASEGURO" ("SSEGURO", "CMOVIMI", "CESTA") AS 
  select distinct sseguro,cmovimi,cesta
from ctaseguro

 
 
;
  GRANT UPDATE ON "AXIS"."VIEW_RESUMENCTASEGURO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VIEW_RESUMENCTASEGURO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."VIEW_RESUMENCTASEGURO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."VIEW_RESUMENCTASEGURO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VIEW_RESUMENCTASEGURO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."VIEW_RESUMENCTASEGURO" TO "PROGRAMADORESCSI";
