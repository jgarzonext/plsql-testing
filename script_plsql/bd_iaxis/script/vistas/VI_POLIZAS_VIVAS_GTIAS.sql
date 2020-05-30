--------------------------------------------------------
--  DDL for View VI_POLIZAS_VIVAS_GTIAS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."VI_POLIZAS_VIVAS_GTIAS" ("POLISSA", "CERTIFICAT", "PRODUCTE", "RISC", "EFECTE", "EFECTE_REAL", "GARANTIA", "CAPITAL", "PRIMA", "FPAGO", "OFICINA", "POLISSA_INI", "CODI_PROD", "TERCER", "CODI_BANCARI", "NOM_AFILIAT", "COGNOM_1", "COGNOM_2", "SEXE", "DATA_NAIXEMENT") AS 
  SELECT   s.npoliza, s.ncertif, v.ttitulo producte, r.nriesgo,
            r.fefecto efecte, p.trespue efecte_real,
            gg.cgarant || '-' || gg.tgarant, 
            TO_CHAR(g.icapital,'9999999990.99') capital,
            TO_CHAR(g.iprianu ,'9999999990.99') prima, 
            d.tatribu fpago, s.cagente oficina,
            c.polissa_ini, v.sproduc, e.snip, s.cbancar, e2.tnombre,
            e2.tapelli1, e2.tapelli2, DECODE (p2.csexper, 1, 'HOME', 'DONA'),
            TO_CHAR (p2.fnacimi, 'DD/MM/YYYY')
       FROM garangen gg,
            per_personas e,
            tomadores t,
            per_personas p2,
            per_detper e2,
            riesgos r,
            cnvpolizas c,
            detvalores d,
            garanseg g,
            v_productos v,
            pregunseg p,
            seguros s
      WHERE gg.cgarant = g.cgarant  
        AND gg.cidioma = 1
        AND e.sperson = t.sperson
        AND t.nordtom = (SELECT MIN (x.nordtom)
                           FROM tomadores x
                          WHERE x.sseguro = s.sseguro)
        AND t.sseguro = s.sseguro
        AND e2.cagente = (SELECT MIN (x.cagente)
                            FROM per_detper x
                           WHERE x.sperson = e2.sperson)
        AND e2.sperson = r.sperson
        AND p2.sperson = r.sperson
        AND r.fanulac IS NULL
        AND r.sseguro = s.sseguro
        AND c.sseguro(+) = s.sseguro
        AND d.cvalor = 17
        AND d.catribu = s.cforpag
        AND d.cidioma = 1
        AND p.sseguro(+) = g.sseguro
        AND p.nriesgo(+) = g.nriesgo
        AND p.cpregun(+) = 44
        AND p.nmovimi(+) = g.nmovimi
        AND v.sproduc = s.sproduc
        AND g.ffinefe IS NULL
        AND g.sseguro = s.sseguro
        AND g.nriesgo = r.nriesgo
        AND s.csituac IN (0, 5)
        AND s.fanulac IS NULL
        AND NOT EXISTS (SELECT 1
                          FROM vi_certificados_0 v0
                         WHERE v0.sseguro = s.sseguro)
   ORDER BY s.npoliza, s.ncertif, r.nriesgo, gg.cgarant 
 
 
;
  GRANT UPDATE ON "AXIS"."VI_POLIZAS_VIVAS_GTIAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_POLIZAS_VIVAS_GTIAS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."VI_POLIZAS_VIVAS_GTIAS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."VI_POLIZAS_VIVAS_GTIAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_POLIZAS_VIVAS_GTIAS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."VI_POLIZAS_VIVAS_GTIAS" TO "PROGRAMADORESCSI";
