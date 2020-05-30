--------------------------------------------------------
--  DDL for View VI_POLIZAS_HIJOS25A
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."VI_POLIZAS_HIJOS25A" ("POLISSA", "CERTIFICAT", "TERCER", "NOM_RISC", "EDAT_REAL", "ANIVERSARI", "D25_ANIVERSARI") AS 
  SELECT   s.npoliza, s.ncertif, 
            p.snip tercer,
               e.tnombre
            || DECODE (e.tapelli1, NULL, NULL, ' ')
            || e.tapelli1
            || DECODE (e.tapelli2, NULL, NULL, ' ')
            || e.tapelli2 nombre,
            TRUNC (MONTHS_BETWEEN (f_sysdate, p.fnacimi) / 12) edad,
            TO_CHAR (ADD_MONTHS (p.fnacimi, 25 * 12), 'MM/YYYY') aniversari,
            TO_CHAR (ADD_MONTHS (p.fnacimi, 25 * 12), 'YYYY') data_25anys
       FROM per_personas p, per_detper e, pregunseg g, riesgos r, seguros s
      WHERE p.sperson = e.sperson
        AND e.sperson = r.sperson
        AND e.cagente = (SELECT MAX (x.cagente)
                           FROM per_detper x
                          WHERE x.sperson = e.sperson)
        AND s.cramo = 2
        AND r.sseguro = s.sseguro
        AND g.sseguro = r.sseguro
        AND g.nriesgo = r.nriesgo
        AND g.cpregun IN (505, 540)
        AND g.crespue = 2
        AND g.nmovimi IN (SELECT MAX (nmovimi)
                            FROM movseguro m
                           WHERE m.sseguro = s.sseguro)
        AND s.csituac = 0
        AND s.fanulac IS NULL
   ORDER BY p.fnacimi 
 
 
;
  GRANT UPDATE ON "AXIS"."VI_POLIZAS_HIJOS25A" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_POLIZAS_HIJOS25A" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."VI_POLIZAS_HIJOS25A" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."VI_POLIZAS_HIJOS25A" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_POLIZAS_HIJOS25A" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."VI_POLIZAS_HIJOS25A" TO "PROGRAMADORESCSI";
