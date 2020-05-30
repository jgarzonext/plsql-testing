--------------------------------------------------------
--  DDL for View VI_CARTERA_GTIA
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."VI_CARTERA_GTIA" ("FCARTERA", "CODIGO", "AGR_PRODUCTO", "CAGENTE", "DESAGENTE", "POLISSES", "ASSEGURATS", "GARANTIA", "ASSEGURATS_GTIA") AS 
  SELECT   pol.fcartera, pol.sproduc codigo, v.ttitulo agr_producto,
            pol.cagente,
               e.tnombre
            || DECODE (e.tapelli1, NULL, NULL, ' ')
            || e.tapelli1
            || DECODE (e.tapelli2, NULL, NULL, ' ')
            || e.tapelli2 desagente,
            pol.polisses, rie.assegurats, gti.cgarant, gti.assegurats_gtia
       FROM v_productos v,
            per_detper e,
            agentes a,
            (SELECT   TO_CHAR (ADD_MONTHS ('01/01/2008', n.fila - 1),
                               'YYYYMM'
                              ) fcartera,
                      s.sproduc, s.cagente,
                      COUNT (DISTINCT s.sseguro) polisses
                 FROM movseguro m, seguros s, numero n
                WHERE s.csituac != 4
                  AND m.cmotmov = 100
                  AND m.femisio < ADD_MONTHS ('01/01/2008', n.fila)
                  AND s.sseguro = m.sseguro
                  AND (   s.fanulac IS NULL
                       OR s.fanulac >= ADD_MONTHS ('01/01/2008', n.fila)
                      )
                  AND ADD_MONTHS ('01/01/2008', n.fila) < f_sysdate
                  AND NOT EXISTS (SELECT v0.sseguro
                                    FROM vi_certificados_0 v0
                                   WHERE v0.sseguro = s.sseguro)
             GROUP BY TO_CHAR (ADD_MONTHS ('01/01/2008', n.fila - 1),
                               'YYYYMM'),
                      s.cagente,
                      s.sproduc) pol,
            (SELECT   TO_CHAR (ADD_MONTHS ('01/01/2008', n.fila - 1),
                               'YYYYMM'
                              ) fcartera,
                      s.sproduc, s.cagente,
                      COUNT (DISTINCT r.sseguro || r.nriesgo) assegurats
                 FROM riesgos r, movseguro m, seguros s, numero n
                WHERE (   r.fanulac IS NULL
                       OR r.fanulac >= ADD_MONTHS ('01/01/2008', n.fila)
                      )
                  AND r.sseguro = s.sseguro
                  AND DECODE (r.nmovima, 1, m.femisio, r.fefecto) <
                                             ADD_MONTHS ('01/01/2008', n.fila)
                  AND s.csituac != 4
                  AND m.cmotmov = 100
                  AND m.femisio < ADD_MONTHS ('01/01/2008', n.fila)
                  AND s.sseguro = m.sseguro
                  AND (   s.fanulac IS NULL
                       OR s.fanulac >= ADD_MONTHS ('01/01/2008', n.fila)
                      )
                  AND ADD_MONTHS ('01/01/2008', n.fila) < f_sysdate
                  AND NOT EXISTS (SELECT v0.sseguro
                                    FROM vi_certificados_0 v0
                                   WHERE v0.sseguro = s.sseguro)
             GROUP BY TO_CHAR (ADD_MONTHS ('01/01/2008', n.fila - 1),
                               'YYYYMM'),
                      s.cagente,
                      s.sproduc) rie,
            (SELECT   TO_CHAR (ADD_MONTHS ('01/01/2008', n.fila - 1),
                               'YYYYMM'
                              ) fcartera,
                      s.sproduc, s.cagente,
                      TO_CHAR (g.cgarant, '9990') || ' - '
                      || h.tgarant cgarant,
                      COUNT (DISTINCT r.sseguro || r.nriesgo) assegurats_gtia
                 FROM garangen h,
                      garanseg g,
                      riesgos r,
                      movseguro m,
                      seguros s,
                      numero n
                WHERE h.cidioma = 1
                  AND h.cgarant = g.cgarant
                  AND g.sseguro = r.sseguro
                  AND g.nriesgo = r.nriesgo
                  AND g.finiefe < ADD_MONTHS ('01/01/2008', n.fila)
                  AND (   g.ffinefe >= ADD_MONTHS ('01/01/2008', n.fila)
                       OR g.ffinefe IS NULL
                      )
                  AND (   r.fanulac IS NULL
                       OR r.fanulac >= ADD_MONTHS ('01/01/2008', n.fila)
                      )
                  AND r.sseguro = s.sseguro
                  AND DECODE (r.nmovima, 1, m.femisio, r.fefecto) <
                                             ADD_MONTHS ('01/01/2008', n.fila)
                  AND s.csituac != 4
                  AND m.cmotmov = 100
                  AND m.femisio < ADD_MONTHS ('01/01/2008', n.fila)
                  AND s.sseguro = m.sseguro
                  AND (   s.fanulac IS NULL
                       OR s.fanulac >= ADD_MONTHS ('01/01/2008', n.fila)
                      )
                  AND ADD_MONTHS ('01/01/2008', n.fila) < f_sysdate
                  AND NOT EXISTS (SELECT v0.sseguro
                                    FROM vi_certificados_0 v0
                                   WHERE v0.sseguro = s.sseguro)
             GROUP BY TO_CHAR (ADD_MONTHS ('01/01/2008', n.fila - 1),
                               'YYYYMM'),
                      s.cagente,
                      s.sproduc,
                      g.cgarant,
                      h.tgarant) gti
      WHERE v.sproduc = pol.sproduc
        AND e.sperson = a.sperson
        AND a.cagente = pol.cagente
        AND rie.fcartera(+) = pol.fcartera
        AND rie.sproduc(+) = pol.sproduc
        AND rie.cagente(+) = pol.cagente
        AND gti.fcartera(+) = pol.fcartera
        AND gti.sproduc(+) = pol.sproduc
        AND gti.cagente(+) = pol.cagente
   ORDER BY pol.sproduc, pol.cagente, gti.cgarant 
 
 
;
  GRANT UPDATE ON "AXIS"."VI_CARTERA_GTIA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_CARTERA_GTIA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."VI_CARTERA_GTIA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."VI_CARTERA_GTIA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_CARTERA_GTIA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."VI_CARTERA_GTIA" TO "PROGRAMADORESCSI";
