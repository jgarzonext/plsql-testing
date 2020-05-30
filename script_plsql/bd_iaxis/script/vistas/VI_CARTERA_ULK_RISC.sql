--------------------------------------------------------
--  DDL for View VI_CARTERA_ULK_RISC
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."VI_CARTERA_ULK_RISC" ("POLISSA", "DATA_ANULACIO", "SITUACIO", "TERCER", "DATA_NAIXEMENT", "EDAT_TARIF", "CONTRATE_AVALOQ", "TIPUS_ULK", "CAPITAL_ASSEGURAT", "CAPITAL_PATRIMONI", "IMPORT_REBUT") AS 
  SELECT s.npoliza, s.fanulac, d.tatribu,
       a.snip tercer, 
       TO_CHAR(a.fnacimi, 'DD/MM/YYYY'),
       p1.crespue edad_tarif,
       r.ctapres contracte_avaloq,
       (SELECT trespue
          FROM respuestas
         WHERE cidioma = 1 AND cpregun = 586
               AND crespue = p.crespue) tipus_ulk,
       (SELECT SUM (g.icapital)
          FROM garanseg g
         WHERE g.sseguro = s.sseguro
           AND g.nriesgo = t.nriesgo
           AND g.ffinefe IS NULL) capital_assegurat,
        p2.crespue capital_patrimoni,
       (SELECT SUM (itotalr)
          FROM vdetrecibos v
         WHERE v.nrecibo IN (
                   SELECT MAX (x.nrecibo)
                     FROM recibos x
                    WHERE x.sseguro = s.sseguro
                          AND x.ctiprec = 3)) import_rebut
  FROM seguros s,
       prestamoseg r,
       riesgos t,
       per_personas a,
       detvalores d,
       pregunseg p,
       pregunseg p1,
       pregunseg p2
 WHERE s.sseguro = p.sseguro  
   AND s.sproduc = 644
   AND p.sseguro = s.sseguro
   AND p.nriesgo = t.nriesgo
   AND p.cpregun = 586                                  -- Perfil de inversión  
   AND p.nmovimi = r.nmovimi
   AND p.nmovimi = (SELECT MAX (nmovimi)
                      FROM pregunseg pp
                     WHERE pp.sseguro = t.sseguro
                       AND pp.nriesgo = t.nriesgo)
   AND p1.sseguro = s.sseguro
   AND p1.nriesgo = t.nriesgo
   AND p1.cpregun = 1                                  -- Capital Patrimonio  
   AND p1.nmovimi = r.nmovimi
   AND p1.nmovimi = (SELECT MAX (nmovimi)
                       FROM pregunseg pp
                     WHERE pp.sseguro = t.sseguro
                       AND pp.nriesgo = t.nriesgo)
   AND p2.sseguro = s.sseguro
   AND p2.nriesgo = t.nriesgo
   AND p2.cpregun = 572                                  -- Capital Patrimonio  
   AND p2.nmovimi = r.nmovimi
   AND p2.nmovimi = (SELECT MAX (nmovimi)
                       FROM pregunseg pp
                     WHERE pp.sseguro = t.sseguro
                       AND pp.nriesgo = t.nriesgo)
   AND s.sseguro = r.sseguro
   AND t.sseguro = s.sseguro
   AND a.sperson = t.sperson
   AND d.cvalor = 61
   AND d.catribu = s.csituac
   AND d.cidioma = 1 
 
 
;
  GRANT UPDATE ON "AXIS"."VI_CARTERA_ULK_RISC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_CARTERA_ULK_RISC" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."VI_CARTERA_ULK_RISC" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."VI_CARTERA_ULK_RISC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_CARTERA_ULK_RISC" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."VI_CARTERA_ULK_RISC" TO "PROGRAMADORESCSI";
