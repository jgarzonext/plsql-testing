--------------------------------------------------------
--  DDL for View VI_SINIESTROS_RAMO24
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."VI_SINIESTROS_RAMO24" ("NPOLIZA", "ESTAT", "DATA_EFECTE", "SNIP", "TNOMBRE", "TAPELLI1", "TAPELLI2", "SEXE", "EDAT", "GRUP_PROFESSIO", "FRANQUICIA", "DIES_BAIXA_TOTAL", "DIES_BAIXA_ANY_ANT", "DIES_BAIXA_ANY_ACT", "RATI_TOTAL", "RATI_ANY_ANT", "RATI_ANY_ACT", "IMPORT_SINISTRE_TOTAL", "IMPORT_SINISTRE_ANY_ANT", "IMPORT_SINISTRE_ANY_ACT", "TOTAL_COBRAT", "TOTAL_COBRAT_ANY_ANT", "TOTAL_COBRAT_ANY_ACT", "PRODUCTE", "SPRODUC") AS 
  SELECT    g.npoliza,
          t.tatribu,
          to_char(g.fefecto,'DD/MM/YYYY') data_efecte, 
          p.snip, 
          d.tnombre, 
          d.tapelli1, 
          d.tapelli2,
          DECODE (p.csexper, 1, 'Home', 2, 'Dona') sexe,
          ROUND (MONTHS_BETWEEN (SYSDATE, p.fnacimi) / 12, 0) edat,
----------------------------------------------------------- Grup de Professió 
            (SELECT  r40.trespue 
               FROM pregunseg p40,
                    respuestas r40
              WHERE p40.cpregun = 40
                AND p40.sseguro = r.sseguro
                AND p40.nriesgo = r.nriesgo
                AND p40.nmovimi = (SELECT MAX (f.nmovimi)
                                      FROM garanseg f
                                     WHERE f.sseguro = g.sseguro)                
                AND r40.cpregun = p40.cpregun
                AND r40.crespue = p40.crespue
                AND r40.cidioma = 1) grup_professio,
-------------------------------------------------------- franquicia           
            (SELECT r605.trespue 
               FROM pregunseg p605,
                    respuestas r605
              WHERE p605.cpregun IN (602, 605)
                AND p605.sseguro = r.sseguro
                AND p605.nriesgo = r.nriesgo
                AND p605.nmovimi = (SELECT MAX (f.nmovimi)
                                      FROM garanseg f
                                     WHERE f.sseguro = g.sseguro)                
                AND r605.cpregun = p605.cpregun
                AND r605.crespue = p605.crespue
                AND r605.cidioma = 1) franquicia,
-------------------------------------------------------
            (SELECT SUM (fperfin - fperini + 1) dies_baixa
               FROM valorasini v, siniestros k
              WHERE v.nsinies = k.nsinies
                AND k.sseguro = r.sseguro
                AND k.nriesgo = r.nriesgo) dies_baixa_total,          
-------------------------------------------------------
            (SELECT SUM (fperfin - fperini + 1) dies_baixa
               FROM valorasini v, siniestros k
              WHERE v.nsinies = k.nsinies
                AND k.sseguro = r.sseguro
                AND k.nriesgo = r.nriesgo
                AND TO_CHAR (k.fsinies, 'yyyy') = TO_CHAR(SYSDATE,'YYYY')-1
           GROUP BY TO_CHAR (k.fsinies, 'yyyy')) dies_baixa_any_ant,          
-------------------------------------------------------
            (SELECT SUM (fperfin - fperini + 1) dies_baixa
               FROM valorasini v, siniestros k
              WHERE v.nsinies = k.nsinies
                AND k.sseguro = r.sseguro
                AND k.nriesgo = r.nriesgo
                AND TO_CHAR (k.fsinies, 'yyyy') = TO_CHAR(SYSDATE,'YYYY')
           GROUP BY TO_CHAR (k.fsinies, 'yyyy')) dies_baixa_any_act,          
-------------------------------------------------------
          NVL(
          ROUND (    (SELECT SUM (iimpsin) import_sinistre
                        FROM pagosini v, siniestros k
                       WHERE v.nsinies = k.nsinies
                         AND v.ctransfer = 2               --> 2 = Transferido
                         AND k.sseguro = r.sseguro
                         AND k.nriesgo = r.nriesgo)
                 / 
                     (SELECT SUM (DECODE (cconcep, 13, -iconcep, iconcep)
                                 ) total_cobrat
                        FROM detrecibos w, recibos z, movrecibo m
                       WHERE w.nrecibo = z.nrecibo
                         AND cconcep IN
                                      (0, 1, 2, 3, 4, 5, 6, 7, 8, 13, 14, 26)
                         AND m.nrecibo = w.nrecibo
                         AND m.fmovfin IS NULL
                         AND m.cestrec = 1
                         AND z.sseguro = r.sseguro
                         AND w.nriesgo = r.nriesgo)
                 * 100,
                 2
                ),
                0
                ) rati_total,          
-------------------------------------------------------
          NVL(
          ROUND (    (SELECT SUM (iimpsin) import_sinistre
                        FROM pagosini v, siniestros k
                       WHERE v.nsinies = k.nsinies
                         AND v.ctransfer = 2               --> 2 = Transferido 
                         AND k.sseguro = r.sseguro
                         AND k.nriesgo = r.nriesgo
                         AND TO_CHAR (k.fsinies, 'yyyy') =  TO_CHAR(SYSDATE,'YYYY')-1
                    GROUP BY TO_CHAR (k.fsinies, 'yyyy'))
                 / 
                     (SELECT SUM (DECODE (cconcep, 13, -iconcep, iconcep)
                                 ) total_cobrat
                        FROM detrecibos w, recibos z, movrecibo m
                       WHERE w.nrecibo = z.nrecibo
                         AND cconcep IN
                                      (0, 1, 2, 3, 4, 5, 6, 7, 8, 13, 14, 26)
                         AND m.nrecibo = w.nrecibo
                         AND m.fmovfin IS NULL
                         AND m.cestrec = 1
                         AND z.sseguro = r.sseguro
                         AND w.nriesgo = r.nriesgo
                         AND TO_CHAR (z.fefecto, 'yyyy') =  TO_CHAR(SYSDATE,'YYYY')-1
                    GROUP BY TO_CHAR (z.fefecto, 'yyyy'))
                 * 100,
                 2
                ),
              0
             ) rati_any_ant,          
-------------------------------------------------------
          NVL(
          ROUND (    (SELECT SUM (iimpsin) import_sinistre
                        FROM pagosini v, siniestros k
                       WHERE v.nsinies = k.nsinies
                         AND v.ctransfer = 2               --> 2 = Transferido
                         AND k.sseguro = r.sseguro
                         AND k.nriesgo = r.nriesgo
                         AND TO_CHAR (k.fsinies, 'yyyy') =  TO_CHAR(SYSDATE,'YYYY')
                    GROUP BY TO_CHAR (k.fsinies, 'yyyy'))
                 / 
                     (SELECT SUM (DECODE (cconcep, 13, -iconcep, iconcep)
                                 ) total_cobrat
                        FROM detrecibos w, recibos z, movrecibo m
                       WHERE w.nrecibo = z.nrecibo
                         AND cconcep IN
                                      (0, 1, 2, 3, 4, 5, 6, 7, 8, 13, 14, 26)
                         AND m.nrecibo = w.nrecibo
                         AND m.fmovfin IS NULL
                         AND m.cestrec = 1
                         AND z.sseguro = r.sseguro
                         AND w.nriesgo = r.nriesgo
                         AND TO_CHAR (z.fefecto, 'yyyy') =  TO_CHAR(SYSDATE,'YYYY')
                    GROUP BY TO_CHAR (z.fefecto, 'yyyy'))
                 * 100,
                 2
                ),
               0
              ) rati_any_act,          
-------------------------------------------------------
            (SELECT NVL (SUM (iimpsin), 0) import_sinistre
               FROM pagosini v, siniestros k
              WHERE v.nsinies = k.nsinies
                AND v.ctransfer = 2                        --> 2 = Transferido
                AND k.sseguro = r.sseguro
                AND k.nriesgo = r.nriesgo) import_sinistre_total,         
-------------------------------------------------------
            (SELECT NVL (SUM (iimpsin), 0) import_sinistre
               FROM pagosini v, siniestros k
              WHERE v.nsinies = k.nsinies
                AND v.ctransfer = 2                        --> 2 = Transferido
                AND k.sseguro = r.sseguro
                AND k.nriesgo = r.nriesgo
                AND TO_CHAR (k.fsinies, 'yyyy') = TO_CHAR(SYSDATE,'YYYY')-1
           GROUP BY TO_CHAR (k.fsinies, 'yyyy')) import_sinistre_any_ant,         
-------------------------------------------------------
            (SELECT NVL (SUM (iimpsin), 0) import_sinistre
               FROM pagosini v, siniestros k
              WHERE v.nsinies = k.nsinies
                AND v.ctransfer = 2                        --> 2 = Transferido
                AND k.sseguro = r.sseguro
                AND k.nriesgo = r.nriesgo
                AND TO_CHAR (k.fsinies, 'yyyy') = TO_CHAR(SYSDATE,'YYYY')
           GROUP BY TO_CHAR (k.fsinies, 'yyyy')) import_sinistre_any_act,         
-------------------------------------------------------
            (SELECT SUM (DECODE (cconcep, 13, -iconcep, iconcep))
                                                   total_cobrat
               FROM detrecibos w, recibos z, movrecibo m
              WHERE w.nrecibo = z.nrecibo
                AND cconcep IN (0, 1, 2, 3, 4, 5, 6, 7, 8, 13, 14, 26)
                AND m.nrecibo = w.nrecibo
                AND m.fmovfin IS NULL
                AND m.cestrec = 1
                AND z.sseguro = r.sseguro
                AND w.nriesgo = r.nriesgo) total_cobrat,
-------------------------------------------------------
            (SELECT SUM (DECODE (cconcep, 13, -iconcep, iconcep))
                                                   total_cobrat
               FROM detrecibos w, recibos z, movrecibo m
              WHERE w.nrecibo = z.nrecibo
                AND cconcep IN (0, 1, 2, 3, 4, 5, 6, 7, 8, 13, 14, 26)
                AND m.nrecibo = w.nrecibo
                AND m.fmovfin IS NULL
                AND m.cestrec = 1
                AND z.sseguro = r.sseguro
                AND w.nriesgo = r.nriesgo
                AND TO_CHAR (z.fefecto, 'yyyy') = TO_CHAR(SYSDATE,'YYYY')-1
           GROUP BY TO_CHAR (z.fefecto, 'yyyy')) total_cobrat_any_ant,
-------------------------------------------------------
            (SELECT SUM (DECODE (cconcep, 13, -iconcep, iconcep))
                                                   total_cobrat
               FROM detrecibos w, recibos z, movrecibo m
              WHERE w.nrecibo = z.nrecibo
                AND cconcep IN (0, 1, 2, 3, 4, 5, 6, 7, 8, 13, 14, 26)
                AND m.nrecibo = w.nrecibo
                AND m.fmovfin IS NULL
                AND m.cestrec = 1
                AND z.sseguro = r.sseguro
                AND w.nriesgo = r.nriesgo
                AND TO_CHAR (z.fefecto, 'yyyy') = TO_CHAR(SYSDATE,'YYYY')
           GROUP BY TO_CHAR (z.fefecto, 'yyyy')) total_cobrat_any_act,
-------------------------------------------------------
          v.ttitulo,
          g.sproduc
     FROM seguros g,
          riesgos r,
          per_detper d,
          per_personas p,
          v_productos v,
          detvalores t
    WHERE r.sseguro = g.sseguro
      AND v.sproduc = g.sproduc
      AND t.cvalor = 61
      AND t.cidioma = 1
      AND t.catribu = g.csituac
      AND g.cramo = 24
      AND p.sperson = r.sperson
      AND d.sperson = r.sperson
      AND d.cagente IN (SELECT MAX (x.cagente)
                          FROM per_detper x
                         WHERE x.sperson = r.sperson) 
 
 
;
  GRANT UPDATE ON "AXIS"."VI_SINIESTROS_RAMO24" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_SINIESTROS_RAMO24" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."VI_SINIESTROS_RAMO24" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."VI_SINIESTROS_RAMO24" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_SINIESTROS_RAMO24" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."VI_SINIESTROS_RAMO24" TO "PROGRAMADORESCSI";
