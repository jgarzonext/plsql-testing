--------------------------------------------------------
--  DDL for View VISTA_RAMOS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."VISTA_RAMOS" ("CIDIOMA", "CRAMO", "TRAMO") AS 
  select "CIDIOMA","CRAMO","TRAMO" from ramos
  where cramo in (select cramo from usu_prod where cusuari = F_USER )
 
 
;
  GRANT UPDATE ON "AXIS"."VISTA_RAMOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VISTA_RAMOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."VISTA_RAMOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."VISTA_RAMOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VISTA_RAMOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."VISTA_RAMOS" TO "PROGRAMADORESCSI";
