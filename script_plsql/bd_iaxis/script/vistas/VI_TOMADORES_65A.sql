--------------------------------------------------------
--  DDL for View VI_TOMADORES_65A
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."VI_TOMADORES_65A" ("POLISSA", "TERCER", "NOM_RISC", "EDAT_REAL", "ANIVERSARI", "D65_ANIVERSARI") AS 
  SELECT   s.npoliza polissa, p.snip tercer,
               e.tnombre
            || DECODE (e.tapelli1, NULL, NULL, ' ')
            || e.tapelli1
            || DECODE (e.tapelli2, NULL, NULL, ' ')
            || e.tapelli2 nombre,
            TRUNC (MONTHS_BETWEEN (f_sysdate, p.fnacimi) / 12) edad,
            TO_CHAR (ADD_MONTHS (p.fnacimi, 65 * 12), 'MM/YYYY') aniversari,
            TO_CHAR (ADD_MONTHS (p.fnacimi, 65 * 12), 'YYYY') data_25anys
       FROM per_personas p, per_detper e, pregunseg g, riesgos r, seguros s
      WHERE p.sperson = e.sperson
        AND e.cagente = (SELECT MAX (x.cagente)
                           FROM per_detper x
                          WHERE x.sperson = e.sperson)
        AND e.sperson = r.sperson
        AND s.sproduc IN (257, 258, 439)
        AND r.sseguro = s.sseguro
        AND g.sseguro = r.sseguro
        AND g.nriesgo = r.nriesgo
        AND g.cpregun IN (505, 540)
        AND g.crespue = 0
        AND g.nmovimi IN (SELECT MAX (nmovimi)
                               FROM movseguro m
                              WHERE m.sseguro = s.sseguro)
        AND s.csituac = 0
        AND s.fanulac IS NULL
      UNION        
   SELECT   s.npoliza polissa, p.snip tercer,
               e.tnombre
            || DECODE (e.tapelli1, NULL, NULL, ' ')
            || e.tapelli1
            || DECODE (e.tapelli2, NULL, NULL, ' ')
            || e.tapelli2 nombre,
            TRUNC (MONTHS_BETWEEN (f_sysdate, p.fnacimi) / 12) edad,
            TO_CHAR (ADD_MONTHS (p.fnacimi, 65 * 12), 'MM/YYYY') aniversari,
            TO_CHAR (ADD_MONTHS (p.fnacimi, 65 * 12), 'YYYY') data_25anys
       FROM per_personas p, per_detper e, riesgos r, seguros s
      WHERE p.sperson = e.sperson
        AND e.cagente = (SELECT MAX (x.cagente)
                           FROM per_detper x
                          WHERE x.sperson = e.sperson)
        AND e.sperson = r.sperson
        AND s.cramo = 24 
        AND r.sseguro = s.sseguro
        AND s.csituac = 0
        AND s.fanulac IS NULL
   ORDER BY 6 
 
 
;
  GRANT UPDATE ON "AXIS"."VI_TOMADORES_65A" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_TOMADORES_65A" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."VI_TOMADORES_65A" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."VI_TOMADORES_65A" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_TOMADORES_65A" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."VI_TOMADORES_65A" TO "PROGRAMADORESCSI";
