--------------------------------------------------------
--  DDL for View VISTA_TOMADORES
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."VISTA_TOMADORES" ("SPERSON", "SSEGURO", "NORDTOM", "CDOMICI") AS 
  select "SPERSON","SSEGURO","NORDTOM","CDOMICI" from tomadores where sseguro in
	( SELECT sseguro FROM segurosredcom sr, usuarios u
	   WHERE u.cusuari = F_USER AND sr.cagente = u.cdelega )
 
 
;
  GRANT UPDATE ON "AXIS"."VISTA_TOMADORES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VISTA_TOMADORES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."VISTA_TOMADORES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."VISTA_TOMADORES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VISTA_TOMADORES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."VISTA_TOMADORES" TO "PROGRAMADORESCSI";
