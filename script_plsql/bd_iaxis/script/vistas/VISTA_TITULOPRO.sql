--------------------------------------------------------
--  DDL for View VISTA_TITULOPRO
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."VISTA_TITULOPRO" ("CRAMO", "CMODALI", "CTIPSEG", "CCOLECT", "CIDIOMA", "TTITULO", "TROTULO") AS 
  select "CRAMO","CMODALI","CTIPSEG","CCOLECT","CIDIOMA","TTITULO","TROTULO" from titulopro where (cramo, cmodali, ctipseg, ccolect) in
	(select cramo, cmodali, ctipseg, ccolect
	   from usu_prod where cusuari = F_USER)
 
 
;
  GRANT UPDATE ON "AXIS"."VISTA_TITULOPRO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VISTA_TITULOPRO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."VISTA_TITULOPRO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."VISTA_TITULOPRO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VISTA_TITULOPRO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."VISTA_TITULOPRO" TO "PROGRAMADORESCSI";
