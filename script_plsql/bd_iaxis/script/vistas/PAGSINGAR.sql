--------------------------------------------------------
--  DDL for View PAGSINGAR
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."PAGSINGAR" ("NSINIES", "SIDEPAG", "CTIPPAG", "CGARANT", "ISINRET", "FPERINI", "FPERFIN") AS 
  select ps.nsinies,pg.sidepag,ps.ctippag,pg.cgarant,pg.isinret,pg.fperini,pg.fperfin
from pagosini ps, pagogarantia pg
where pg.sidepag = ps.sidepag

 
 
;
  GRANT UPDATE ON "AXIS"."PAGSINGAR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PAGSINGAR" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PAGSINGAR" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PAGSINGAR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PAGSINGAR" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PAGSINGAR" TO "PROGRAMADORESCSI";
