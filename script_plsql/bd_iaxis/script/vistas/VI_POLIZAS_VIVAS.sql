--------------------------------------------------------
--  DDL for View VI_POLIZAS_VIVAS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."VI_POLIZAS_VIVAS" ("POLISSA", "CERTIFICAT", "PRODUCTE", "EFECTE", "EFECTE_REAL", "CAPITAL", "PRIMA", "FPAGO", "OFICINA", "POLISSA_INI", "CODI_PROD", "TERCER", "NOM", "COGNOM1", "COGNOM2", "CODI_BANCARI", "ASSEGURATS", "DATA SUBSCRIPCIÓ") AS 
  SELECT   s.npoliza polissa, s.ncertif certificat, v.ttitulo producte,
            s.fefecto efecte, p.trespue efecte_real,
            MAX (DECODE(g.cgarant, 1, g.icapital, 60, g.icapital, 0)) capital,
            SUM (g.iprianu) prima, d.tatribu fpago,
            s.cagente oficina, c.polissa_ini, v.sproduc, e.snip, f.tnombre,
            f.tapelli1, f.tapelli2, s.cbancar,
            COUNT (DISTINCT r.nriesgo) riesgos, m.fmovimi
       FROM per_detper f,
            per_personas e,
            tomadores t,
            movseguro m,
            cnvpolizas c,
            detvalores d,
            riesgos r,
            garanseg g,
            v_productos v,
            pregunseg p,
            seguros s
      WHERE f.cagente IN (SELECT MAX (cagente)
                            FROM per_detper x
                           WHERE x.sperson = f.sperson)
        AND f.sperson = t.sperson
        AND e.sperson = t.sperson
        AND t.nordtom = (SELECT MIN (x.nordtom)
                           FROM tomadores x
                          WHERE x.sseguro = s.sseguro)
        AND t.sseguro = s.sseguro
        AND c.sseguro(+) = g.sseguro
        AND d.cvalor = 17
        AND d.catribu = s.cforpag
        AND d.cidioma = 1
        AND p.sseguro(+) = s.sseguro
        AND p.cpregun(+) = 44
        AND v.sproduc = s.sproduc
        AND g.ffinefe IS NULL
        AND g.sseguro = s.sseguro
        AND g.nriesgo = r.nriesgo
        AND r.sseguro = s.sseguro
        AND r.fanulac IS NULL
        AND s.csituac IN (0, 5)
        AND s.sseguro = m.sseguro
        AND m.cmotmov = 100
        AND s.fanulac IS NULL
        AND NOT EXISTS (SELECT 1
                          FROM vi_certificados_0 v0
                         WHERE v0.sseguro = s.sseguro)
   GROUP BY s.npoliza,
            s.ncertif,
            v.ttitulo,
            s.fefecto,
            p.trespue,
            d.tatribu,
            s.cagente,
            c.polissa_ini,
            v.sproduc,
            e.snip,
            f.tnombre,
            f.tapelli1,
            f.tapelli2,
            s.cbancar,
            m.fmovimi 
 
 
;
  GRANT UPDATE ON "AXIS"."VI_POLIZAS_VIVAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_POLIZAS_VIVAS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."VI_POLIZAS_VIVAS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."VI_POLIZAS_VIVAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_POLIZAS_VIVAS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."VI_POLIZAS_VIVAS" TO "PROGRAMADORESCSI";
