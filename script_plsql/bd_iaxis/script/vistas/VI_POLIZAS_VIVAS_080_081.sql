--------------------------------------------------------
--  DDL for View VI_POLIZAS_VIVAS_080_081
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."VI_POLIZAS_VIVAS_080_081" ("POLISSA", "POLISSA_INI", "PRODUCTE", "EFECTE", "CAPITAL_MORT", "PRIMA_MORT", "FPAGO", "OFICINA", "CODI_PROD", "TERCER_PRENEDOR", "NOM_P", "COGNOM1_P", "COGNOM2_P", "TERCER_ASSEGURAT", "NOM_A", "COGNOM1_A", "COGNOM2_A", "PERFIL", "TIPUS_PRODUCTE", "DATA_NAIXEMENT_MENOR", "CODI_BANCARI", "ESTAT", "SITUACIO", "NUM_PARTICIPACIONS", "OPCIO_DINAMICA") AS 
  SELECT s.npoliza, c.polissa_ini, v.ttitulo producte, s.fefecto efecte,
          TO_CHAR (g.icapital, '9999999990.99') icapital,
          TO_CHAR (g.iprianu, '9999999990.99') iprianu, d.tatribu fpago,
          s.cagente oficina, v.sproduc, e.snip, f.tnombre, f.tapelli1,
          f.tapelli2, e2.snip, f2.tnombre, f2.tapelli1, f2.tapelli2,
          DECODE (u.cmodinv,
                  1, '035',
                  2, '045',
                  3, '055',
                  4, '062',
                  5, '014',
                  6, '018'
                 ) fons,
          (SELECT r2.trespue
             FROM respuestas r2, pregunpolseg p2
            WHERE r2.cpregun = p2.cpregun
              AND r2.crespue = p2.crespue
              AND r2.cidioma = 1
              AND p2.cpregun = 580
              AND p2.sseguro = s.sseguro
              AND p2.nmovimi IN (SELECT MAX (x.nmovimi)
                                   FROM garanseg x
                                  WHERE x.sseguro = s.sseguro))
                                                               tipus_producte,
          (SELECT p2.trespue
             FROM pregunpolseg p2
            WHERE p2.cpregun = 576
              AND p2.sseguro = s.sseguro
              AND p2.nmovimi IN (SELECT MAX (x.nmovimi)
                                   FROM garanseg x
                                  WHERE x.sseguro = s.sseguro))
                                                         data_naixement_menor,
          s.cbancar, d2.tatribu estat,
          DECODE (s.creteni, 0, 'Normal', 'Retinguda') situacio,
          (SELECT  
--             REPLACE(TO_CHAR (SUM (q.nunidad),'9999999990.99999') ,'.',',') 
             SUM (q.nunidad)  
             FROM ctaseguro q
            WHERE q.sseguro = s.sseguro) num_participacions,
          (SELECT r2.trespue
             FROM respuestas r2, pregunseg p2
            WHERE r2.cpregun = p2.cpregun
              AND r2.crespue = p2.crespue
              AND r2.cidioma = 1
              AND p2.cpregun = 560
              AND p2.sseguro = r.sseguro
              AND p2.nriesgo = r.nriesgo
              AND p2.nmovimi IN (SELECT MAX (x.nmovimi)
                                   FROM garanseg x
                                  WHERE x.sseguro = r.sseguro))
                                                               opcio_dinamica
     FROM per_detper f2,
          per_personas e2,
          per_detper f,
          per_personas e,
          tomadores t,
          cnvpolizas c,
          detvalores d2,
          detvalores d,
          riesgos r,
          garanseg g,
          v_productos v,
          seguros_ulk u,
          seguros s
    WHERE f2.cagente IN (SELECT MAX (cagente)
                           FROM per_detper p
                          WHERE p.sperson = f2.sperson)
      AND f2.sperson = r.sperson
      AND e2.sperson = r.sperson
      AND f.cagente IN (SELECT MAX (cagente)
                          FROM per_detper p
                         WHERE p.sperson = f.sperson)
      AND f.sperson = t.sperson
      AND e.sperson = t.sperson
      AND t.nordtom = (SELECT MIN (x.nordtom)
                         FROM tomadores x
                        WHERE x.sseguro = s.sseguro)
      AND t.sseguro = s.sseguro
      AND s.sproduc IN (80, 81)
      AND c.sseguro(+) = s.sseguro
      AND d2.cvalor = 61                                                     --
      AND d2.catribu = s.csituac
      AND d2.cidioma = 1
      AND d.cvalor = 17
      AND d.catribu = s.cforpag
      AND d.cidioma = 1
      AND v.sproduc = s.sproduc
      AND g.ffinefe(+) IS NULL
      AND g.sseguro(+) = r.sseguro
      AND g.nriesgo(+) = r.nriesgo
      AND g.cgarant(+) = 60                                         --> Muerte
      AND r.sseguro = s.sseguro
      AND u.sseguro = s.sseguro
      AND r.fanulac IS NULL
      --AND s.creteni = 0 --> Han de salir las retenidas
      AND s.csituac IN (0, 5)
      AND s.fanulac IS NULL 
 
 
;
  GRANT UPDATE ON "AXIS"."VI_POLIZAS_VIVAS_080_081" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_POLIZAS_VIVAS_080_081" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."VI_POLIZAS_VIVAS_080_081" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."VI_POLIZAS_VIVAS_080_081" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_POLIZAS_VIVAS_080_081" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."VI_POLIZAS_VIVAS_080_081" TO "PROGRAMADORESCSI";
