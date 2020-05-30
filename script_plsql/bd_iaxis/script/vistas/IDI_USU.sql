--------------------------------------------------------
--  DDL for View IDI_USU
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."IDI_USU" ("CUSUARI", "IDIOMA") AS 
  select cusuari, tidioma idioma
from usuarios u, idiomas i
where u.cidioma = i.cidioma

 
 
;
  GRANT UPDATE ON "AXIS"."IDI_USU" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."IDI_USU" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."IDI_USU" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."IDI_USU" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."IDI_USU" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."IDI_USU" TO "PROGRAMADORESCSI";
