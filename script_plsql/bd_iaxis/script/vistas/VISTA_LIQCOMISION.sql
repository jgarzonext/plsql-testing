--------------------------------------------------------
--  DDL for View VISTA_LIQCOMISION
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."VISTA_LIQCOMISION" ("NRECIBO", "CAGENTE", "SSEGURO", "CEMPRES", "SMOVREC", "FEFEADM", "FEFECTO", "FEMISIO", "NPOLIZA", "CRAMO", "CGESCOB", "SPRODUC", "IPRINET", "ICOMISI", "ITOTIMP", "ITOTALR", "CESTREC") AS 
  SELECT r.nrecibo, r.cagente, r.sseguro, r.cempres, m.smovrec, m.fefeadm, r.fefecto,
          r.femisio, s.npoliza, s.cramo, r.cgescob, s.sproduc, v.iprinet,
          (v.icombru + v.icombrui), v.icomret, v.itotalr, 10
     FROM movrecibo m, recibos r, seguros s, vdetrecibos v
    WHERE m.nrecibo = r.nrecibo
      AND s.sseguro = r.sseguro
      AND r.nrecibo = v.nrecibo
      AND m.smovrec = (SELECT MAX(smovrec)   --agafem el màxim moviment del rebut
                         FROM movrecibo mv
                        WHERE mv.nrecibo = r.nrecibo
                          AND fmovfin IS NULL)
      AND(((v.icombru <> 0
            OR v.icombrui <> 0)
           AND r.cgescob IS NULL)
          OR(r.cgescob = 3))   --rebut amb comisions o gestió broker
      AND(NOT EXISTS(SELECT '*'   --que el rebut no s'hagi liquidat mai
                       FROM liqmovrec l
                      WHERE r.nrecibo = l.nrecibo
                        AND l.cestliq = 1)
          OR EXISTS(
               SELECT '*'   --que la última vegada que el rebut hagi estat liquidat sigui un descobrament
                 FROM liqmovrec l, movrecibo m
                WHERE l.nrecibo = r.nrecibo
                  AND m.smovrec = l.smovrec
                  AND l.smovrec = (SELECT MAX(l2.smovrec)
                                     FROM liqmovrec l2
                                    WHERE l2.nrecibo = r.nrecibo)
                  AND((m.cestrec = 0
                       AND m.cestant = 1)
                      OR m.cestrec = 2)
                  AND l.smovrec <> m.smovrec
                  AND l.cestliq = 1)
          OR(EXISTS   --que el rebut hagi liquidat import (autoliquidació)
                   (SELECT '*'
                      FROM liqmovrec l
                     WHERE r.nrecibo = l.nrecibo
                       AND l.cestliq = 2)
             AND NOT EXISTS   --que el rebut no hagi liquidat comisions (autoliquidació)
                           (SELECT '*'
                              FROM liqmovrec l
                             WHERE r.nrecibo = l.nrecibo
                               AND l.cestliq = 3)))
      AND m.cestrec = 1   --Cobrat
      AND r.cestimp <> 5   --no domiciliat
   UNION
   SELECT r.nrecibo, r.cagente, r.sseguro, r.cempres, m.smovrec, m.fefeadm, r.fefecto,
          r.femisio, s.npoliza, s.cramo, r.cgescob, s.sproduc, v.iprinet,
          (v.icombru + v.icombrui), v.icomret, v.itotalr, 11
     FROM movrecibo m, recibos r, seguros s, vdetrecibos v
    WHERE m.nrecibo = r.nrecibo
      AND s.sseguro = r.sseguro
      AND r.nrecibo = v.nrecibo
      AND m.smovrec = (SELECT MAX(smovrec)   --agafem el màxim moviment del rebut
                         FROM movrecibo mv
                        WHERE mv.nrecibo = r.nrecibo
                          AND fmovfin IS NULL)
      AND(((v.icombru <> 0
            OR v.icombrui <> 0)
           AND r.cgescob IS NULL)
          OR(r.cgescob = 3))   --rebut amb comisions o gestió broker
      AND m.cestrec = 1   --Cobrat
      AND(NOT EXISTS(SELECT '*'   --que el rebut no s'hagi liquidat mai
                       FROM liqmovrec l
                      WHERE r.nrecibo = l.nrecibo
                        AND l.cestliq = 1)
          OR EXISTS(
               SELECT '*'   --que la última vegada que el rebut hagi estat liquidat sigui un descobrament
                 FROM liqmovrec l, movrecibo m
                WHERE l.nrecibo = r.nrecibo
                  AND m.smovrec = l.smovrec
                  AND l.smovrec = (SELECT MAX(l2.smovrec)
                                     FROM liqmovrec l2
                                    WHERE l2.nrecibo = r.nrecibo)
                  AND((m.cestrec = 0
                       AND m.cestant = 1)
                      OR m.cestrec = 2)
                  AND l.smovrec <> m.smovrec
                  AND l.cestliq = 1)
          OR(EXISTS   --que el rebut hagi liquidat import (autoliquidació)
                   (SELECT '*'
                      FROM liqmovrec l
                     WHERE r.nrecibo = l.nrecibo
                       AND l.cestliq = 2)
             AND NOT EXISTS   --que el rebut no hagi liquidat comisions (autoliquidació)
                           (SELECT '*'
                              FROM liqmovrec l
                             WHERE r.nrecibo = l.nrecibo
                               AND l.cestliq = 3)))
      AND r.cestimp = 5   --domiciliat
      AND m.fmovini >
              r.fefecto   --que la data del moviment de cobrat sigui més gran que la data d'efecte
      AND TRUNC(SYSDATE) >=
            (m.fmovini +(pac_parametros.f_parinstalacion_n('DIASLIQ')))   -- que hagin passat els dies de gestió a partir de la data de movimient del movimient de cobrat
   UNION
   SELECT r.nrecibo, r.cagente, r.sseguro, r.cempres, m.smovrec, m.fefeadm, r.fefecto,
          r.femisio, s.npoliza, s.cramo, r.cgescob, s.sproduc, v.iprinet,
          (v.icombru + v.icombrui), v.icomret, v.itotalr, 12
     FROM movrecibo m, recibos r, seguros s, vdetrecibos v
    WHERE m.nrecibo = r.nrecibo
      AND s.sseguro = r.sseguro
      AND r.nrecibo = v.nrecibo
      AND m.smovrec = (SELECT MAX(smovrec)   --agafem el màxim moviment del rebut
                         FROM movrecibo mv
                        WHERE mv.nrecibo = r.nrecibo
                          AND fmovfin IS NULL)
      AND(((v.icombru <> 0
            OR v.icombrui <> 0)
           AND r.cgescob IS NULL)
          OR r.cgescob = 3)   --rebut amb comisions o gestió broker
      AND m.cestrec = 1   --Cobrat
      AND(NOT EXISTS(SELECT '*'   --que el rebut no s'hagi liquidat mai
                       FROM liqmovrec l
                      WHERE r.nrecibo = l.nrecibo
                        AND l.cestliq IN(1, 2, 3))
          OR EXISTS(
               SELECT '*'   --que la última vegada que el rebut hagi estat liquidat sigui un descobrament
                 FROM liqmovrec l, movrecibo m
                WHERE l.nrecibo = r.nrecibo
                  AND m.smovrec = l.smovrec
                  AND l.smovrec = (SELECT MAX(l2.smovrec)
                                     FROM liqmovrec l2
                                    WHERE l2.nrecibo = r.nrecibo)
                  AND((m.cestrec = 0
                       AND m.cestant = 1)
                      OR m.cestrec = 2)
                  AND l.smovrec <> m.smovrec
                  AND l.cestliq IN(1, 2, 3))
          OR(EXISTS   --que el rebut hagi liquidat import (autoliquidació)
                   (SELECT '*'
                      FROM liqmovrec l
                     WHERE r.nrecibo = l.nrecibo
                       AND l.cestliq = 2)
             AND NOT EXISTS   --que el rebut no hagi liquidat comisions (autoliquidació)
                           (SELECT '*'
                              FROM liqmovrec l
                             WHERE r.nrecibo = l.nrecibo
                               AND l.cestliq = 3)))
      AND r.cestimp = 5   --domiciliat
      AND m.fmovini <=
            r.fefecto   --que la data del movimient de cobrat sigui menor o igual que la data d'efecte
      AND TRUNC(SYSDATE) >=
            (r.fefecto +(pac_parametros.f_parinstalacion_n('DIASLIQ')))   -- que hagin passat els dies de gestió a partir de la data d'efecte del moviment de cobrat
   UNION
   SELECT r.nrecibo, r.cagente, r.sseguro, r.cempres, m.smovrec, m.fefeadm, r.fefecto,
          r.femisio, s.npoliza, s.cramo, r.cgescob, s.sproduc, lq.iprinet, lq.icomisi,
          lq.iretenc, lq.itotalr, 20
     FROM movrecibo m, recibos r, seguros s,
          liqmovrec lq   --com que es moviment de "descobro" anem contra liqmovrec
    WHERE s.sseguro = r.sseguro
      AND r.nrecibo = m.nrecibo
      AND m.nrecibo = lq.nrecibo
      AND m.smovrec <>
                  lq.smovrec   -- que el moviment que estem tractant no sigui el moviment liquidat
      AND m.smovrec = (SELECT MAX(smovrec)   --agafem el màxim moviment del rebut
                         FROM movrecibo mv
                        WHERE mv.nrecibo = r.nrecibo
                          AND fmovfin IS NULL)
      AND((m.cestrec = 0
           AND cestant = 1)
          OR(m.cestrec = 2))   -- que sigui un descobrament
      AND EXISTS(SELECT '*'   -- que la última liquidació d'aquest rebut sigui un cobrament
                   FROM liqmovrec l, movrecibo m
                  WHERE l.smovrec = m.smovrec
                    AND l.smovrec = (SELECT MAX(l2.smovrec)
                                       FROM liqmovrec l2
                                      WHERE l2.nrecibo = r.nrecibo)
                    AND m.cestrec = 1
                    -- hem de tirar enrera el que hem donat per cobrat
                                                                     -- independentment de si la liquidació ha sigut de comisions (1)
                                                                     -- o d'autoliquidació (import(2) o comisions (3))
                                                                     -- quins imports tirem enrera se soluciona a la select
                    AND l.cestliq IN(1, 2, 3))
 
 
;
  GRANT UPDATE ON "AXIS"."VISTA_LIQCOMISION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VISTA_LIQCOMISION" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."VISTA_LIQCOMISION" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."VISTA_LIQCOMISION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VISTA_LIQCOMISION" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."VISTA_LIQCOMISION" TO "PROGRAMADORESCSI";
