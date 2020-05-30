--------------------------------------------------------
--  DDL for View V_GARANFORMULA
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."V_GARANFORMULA" ("SPRODUC", "TTITULO", "CGARANT", "CCAMPO", "CRAMO", "CMODALI", "CTIPSEG", "CCOLECT", "CACTIVI", "CLAVE") AS 
  SELECT T.SPRODUC, T.TTITULO, P.CGARANT, P.CCAMPO, P.CRAMO, P.CMODALI, P.CTIPSEG, P.CCOLECT, P.CACTIVI, P.CLAVE
     FROM v_productos t, garanformula p
    WHERE t.cramo = p.cramo
      AND t.cmodali = p.cmodali
      AND t.ctipseg = p.ctipseg
      AND t.ccolect = p.ccolect 
 
 
;
  GRANT UPDATE ON "AXIS"."V_GARANFORMULA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."V_GARANFORMULA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."V_GARANFORMULA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."V_GARANFORMULA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."V_GARANFORMULA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."V_GARANFORMULA" TO "PROGRAMADORESCSI";
