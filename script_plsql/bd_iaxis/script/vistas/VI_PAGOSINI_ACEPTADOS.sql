--------------------------------------------------------
--  DDL for View VI_PAGOSINI_ACEPTADOS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."VI_PAGOSINI_ACEPTADOS" ("TTITULO", "CRAMO", "SPRODUC", "NPOLIZA", "NCERTIF", "NSINIES", "IMPORT", "CATRIBU", "TIPUS", "FORDPAG", "CCAUSIN", "CMOTSIN", "MOTIU") AS 
  SELECT   v.ttitulo, s.cramo, s.sproduc, s.npoliza, s.ncertif, p.nsinies,
            p.isinret import, c.catribu,
            (SELECT tatribu
               FROM detvalores
              WHERE cidioma = 1 AND cvalor = 701
                    AND catribu = c.catribu) tipus,
            p.fordpag, ss.ccausin, ss.cmotsin, d.tmotsin motiu
       FROM pagosini p,
            siniestros ss,
            codicausin c,
            seguros s,
            desmotsini d,
            v_productos v
      WHERE p.nsinies = ss.nsinies
        AND ss.ccausin = c.ccausin
        AND s.sseguro = ss.sseguro
        AND d.cidioma = 1
        AND ss.ccausin = d.ccausin
        AND ss.cmotsin = d.cmotsin
        AND ss.cramo = d.cramo
        AND s.sproduc = v.sproduc
        AND p.cestpag = 1
        AND (p.ctransf = 1 OR p.ctransf IS NULL)
        AND p.ctippag = 2
        -- Estaba en la pantalla de sa nostra
        AND p.sidepag NOT IN (SELECT NVL (pp.spganul, 0)
                                FROM pagosini pp
                               WHERE pp.nsinies = p.nsinies AND cestpag <> 8)
        -- Estaba en la pantalla de sa nostra
        AND p.cforpag = 2
   ORDER BY s.cramo, s.sproduc, s.npoliza 
 
 
;
  GRANT UPDATE ON "AXIS"."VI_PAGOSINI_ACEPTADOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_PAGOSINI_ACEPTADOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."VI_PAGOSINI_ACEPTADOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."VI_PAGOSINI_ACEPTADOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_PAGOSINI_ACEPTADOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."VI_PAGOSINI_ACEPTADOS" TO "PROGRAMADORESCSI";
