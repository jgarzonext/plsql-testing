--------------------------------------------------------
--  DDL for View VI_ALTAS_BAJAS_RIESGOS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."VI_ALTAS_BAJAS_RIESGOS" ("CODIGO", "AGR_PRODUCTO", "FPERIODO", "CAGENTE", "DESAGENTE", "IPRIANU_ALTAS", "NUM_ALTAS", "IPRIANU_BAJAS", "NUM_BAJAS") AS 
  SELECT   codigo, agr_producto, fperiodo, cagente, desagente,
            SUM(iprianu_altas) iprianu_altas, SUM(num_altas) num_altas,
            SUM(iprianu_bajas) iprianu_bajas, SUM(num_bajas) num_bajas
       FROM (
-- ALTAS
             SELECT   s.sproduc codigo, p.ttitulo agr_producto, s.cagente,
                      e.tnombre || DECODE(e.tapelli1, NULL, NULL, ' ') || e.tapelli1
                      || DECODE(e.tapelli2, NULL, NULL, ' ') || e.tapelli2 desagente,
                      TO_CHAR(GREATEST(m.fefecto, m.femisio), 'YYYYMM') fperiodo,
                      SUM(g.iprianu) iprianu_altas,
                      COUNT(DISTINCT g.sseguro || g.nriesgo) num_altas, 0 iprianu_bajas,
                      0 num_bajas
                 FROM per_detper e, agentes a, garanseg g, v_productos p, riesgos r, seguros s,
                      movseguro m
                WHERE e.sperson = a.sperson
                  AND a.cagente = s.cagente
                  AND g.nmovimi = m.nmovimi
                  AND g.nmovima = m.nmovimi
                  AND g.sseguro = m.sseguro
                  AND p.sproduc = s.sproduc
                  AND r.nmovima = m.nmovimi
                  AND r.sseguro = s.sseguro
                  AND s.sseguro = m.sseguro
                  AND m.femisio IS NOT NULL
                  AND s.sseguro NOT IN(SELECT v0.sseguro
                                         FROM vi_certificados_0 v0
                                        WHERE v0.sseguro = s.sseguro)
             GROUP BY s.sproduc, p.ttitulo, s.cagente,
                      e.tnombre || DECODE(e.tapelli1, NULL, NULL, ' ') || e.tapelli1
                      || DECODE(e.tapelli2, NULL, NULL, ' ') || e.tapelli2,
                      TO_CHAR(GREATEST(m.fefecto, m.femisio), 'YYYYMM')
             UNION
-- BAJAS
             SELECT   s.sproduc codigo, p.ttitulo agr_producto, s.cagente,
                      e.tnombre || DECODE(e.tapelli1, NULL, NULL, ' ') || e.tapelli1
                      || DECODE(e.tapelli2, NULL, NULL, ' ') || e.tapelli2 desagente,
                      TO_CHAR(NVL(r.fanulac, s.fanulac), 'YYYYMM') fperiodo, 0 iprianu_altas,
                      0 num_altas, SUM(g.iprianu) iprianu_bajas,
                      COUNT(DISTINCT g.sseguro || g.nriesgo) num_bajas
                 FROM per_detper e, agentes a, garanseg g, v_productos p, riesgos r, seguros s
                WHERE e.sperson = a.sperson
                  AND a.cagente = s.cagente
                  AND p.sproduc = s.sproduc
                  AND g.nmovimi = (SELECT MAX(nmovimi)
                                     FROM garanseg x
                                    WHERE x.nmovima = g.nmovima
                                      AND x.cgarant = g.cgarant
                                      AND x.nriesgo = g.nriesgo
                                      AND x.sseguro = g.sseguro)
                  AND g.nriesgo = r.nriesgo
                  AND g.sseguro = s.sseguro
                  AND r.sseguro = s.sseguro
                  AND(s.fanulac IS NOT NULL
                      OR r.fanulac IS NOT NULL)
                  AND s.sseguro NOT IN(SELECT v0.sseguro
                                         FROM vi_certificados_0 v0
                                        WHERE v0.sseguro = s.sseguro)
             GROUP BY s.sproduc, p.ttitulo, s.cagente,
                      e.tnombre || DECODE(e.tapelli1, NULL, NULL, ' ') || e.tapelli1
                      || DECODE(e.tapelli2, NULL, NULL, ' ') || e.tapelli2,
                      TO_CHAR(NVL(r.fanulac, s.fanulac), 'YYYYMM'))
   GROUP BY codigo, agr_producto, fperiodo, cagente, desagente 
 
 
;
  GRANT UPDATE ON "AXIS"."VI_ALTAS_BAJAS_RIESGOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_ALTAS_BAJAS_RIESGOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."VI_ALTAS_BAJAS_RIESGOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."VI_ALTAS_BAJAS_RIESGOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_ALTAS_BAJAS_RIESGOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."VI_ALTAS_BAJAS_RIESGOS" TO "PROGRAMADORESCSI";
