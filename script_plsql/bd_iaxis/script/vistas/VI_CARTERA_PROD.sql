--------------------------------------------------------
--  DDL for View VI_CARTERA_PROD
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."VI_CARTERA_PROD" ("FCARTERA", "PRODUCTE", "GARANTIA", "CAPITAL", "POLISSES", "ASSEGURATS") AS 
  SELECT   TO_CHAR (ADD_MONTHS ('01/01/2008', n.fila - 1),
                     'YYYYMM') fcartera, v.ttitulo producte, x.tgarant,
            SUM (g.icapital) icapital, COUNT (DISTINCT s.npoliza) polisses,
            COUNT (DISTINCT s.sseguro || r.nriesgo) assegurats
       FROM v_productos v,
            garangen x,
            garanseg g,
            --movseguro m,
            riesgos r,
            seguros s,
            numero n
      WHERE x.cgarant = g.cgarant
        AND x.cidioma = 2
        AND g.sseguro = s.sseguro
        AND s.csituac != 4
        AND g.nriesgo = r.nriesgo
        AND v.sproduc = s.sproduc
        AND s.sseguro = r.sseguro
        AND r.fefecto < ADD_MONTHS ('01/01/2008', n.fila)
        AND (   (    g.cgarant NOT IN (282, 56, 57, 58, 290)
                 AND g.nmovimi =
                        (SELECT MAX (g1.nmovimi)
                           FROM garanseg g1
                          WHERE g1.sseguro = s.sseguro
                            AND g1.nriesgo = r.nriesgo
                            AND g1.cgarant = g.cgarant
                            AND g1.finiefe < ADD_MONTHS ('01/01/2008', n.fila)
                            AND ( 
                                   g1.ffinefe IS NULL    OR
                                   g1.ffinefe >= ADD_MONTHS ('01/01/2008', n.fila)                            
                                )
                        )
                )
             OR (    g.cgarant IN (282, 56, 57, 58, 290)
                 AND TO_CHAR (g.finiefe, 'YYYYMM') = TO_CHAR (ADD_MONTHS ('01/01/2008', n.fila - 1),'YYYYMM')
                 AND (g.ffinefe IS NOT NULL OR 
                      TO_CHAR (g.ffinefe, 'YYYYMM') > TO_CHAR (ADD_MONTHS ('01/01/2008', n.fila - 1),'YYYYMM') )
                )
            )
        AND (   s.fanulac IS NULL
             OR s.fanulac >= ADD_MONTHS ('01/01/2008', n.fila)
            )
        AND (   r.fanulac IS NULL
             OR r.fanulac >= ADD_MONTHS ('01/01/2008', n.fila)
            )
        AND ADD_MONTHS ('01/01/2008', n.fila - 1) < f_sysdate
   GROUP BY TO_CHAR (ADD_MONTHS ('01/01/2008', n.fila - 1), 'YYYYMM'),
            v.ttitulo,
            x.tgarant 
 
 
;
  GRANT UPDATE ON "AXIS"."VI_CARTERA_PROD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_CARTERA_PROD" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."VI_CARTERA_PROD" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."VI_CARTERA_PROD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VI_CARTERA_PROD" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."VI_CARTERA_PROD" TO "PROGRAMADORESCSI";
