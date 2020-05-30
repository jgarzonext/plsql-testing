--------------------------------------------------------
--  DDL for View VIEW_PAGOS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."VIEW_PAGOS" ("NSINIES", "SIDEPAG", "CGARANT", "CTIPPAG", "ISINRET", "FORDPAG") AS 
  SELECT s.nsinies, s.sidepag, p.cgarant, s.ctippag,
p.isinret, s.fordpag
FROM PAGOGARANTIA p, PAGOSINI s
WHERE p.sidepag = s.sidepag

 
 
;
  GRANT UPDATE ON "AXIS"."VIEW_PAGOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VIEW_PAGOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."VIEW_PAGOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."VIEW_PAGOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VIEW_PAGOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."VIEW_PAGOS" TO "PROGRAMADORESCSI";
