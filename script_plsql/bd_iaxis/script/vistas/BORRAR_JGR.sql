--------------------------------------------------------
--  DDL for View BORRAR_JGR
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."BORRAR_JGR" ("CODI", "AGR_PRODUCTE", "POLISSA", "AGENT", "NOM_AGEN", "MES_BAIXA", "DATA_BAIXA", "DATA_MOVIM", "USUARI", "CVALPAR", "FANULAC", "TMOTMOV", "MOTIVO_BAJA", "SSEGURO", "CMOTMOV_ANT", "CMOTMOV") AS 
  SELECT d.cvalpar codi, LPAD(s.sproduc, 6, '0') || ' - ' || d.tvalpar agr_producte,
          s.npoliza || '-' || s.ncertif polissa, s.cagente AGENT,
          e.tnombre || DECODE(e.tapelli1, NULL, NULL, ' ') || e.tapelli1
          || DECODE(e.tapelli2, NULL, NULL, ' ') || e.tapelli2 nom_agen,
          TO_CHAR(s.fanulac, 'YYYYMM') mes_baixa, TO_CHAR(s.fanulac, 'DD/MM/YYYY') data_baixa,
          TO_CHAR(m1.fmovimi, 'DD/MM/YYYY') data_movim, m1.cusumov usuari, s.sproduc cvalpar,          
--          TO_CHAR(p.cvalpar) cvalpar,
          TO_CHAR(s.fanulac, 'YYYYMM') fanulac, x.tmotmov,
          (SELECT ttextos
             FROM agensegu ag
            WHERE ag.sseguro = s.sseguro
              AND ag.ctipreg = 6
              AND ag.falta = m1.fmovimi
              AND ROWNUM = 1) motivo_baja,
          s.sseguro, m1.cmotmov cmotmov_ant, m.cmotmov
     FROM motmovseg x, per_detper e2, tomadores t, per_detper e, agentes a, detparpro d,
          parproductos p, seguros s, movseguro m1, movseguro m
    WHERE e2.sperson = t.sperson
      AND t.sseguro = s.sseguro
      AND t.nordtom = (SELECT MIN(x.nordtom)
                         FROM tomadores x
                        WHERE x.sseguro = s.sseguro)
      AND e.sperson = a.sperson
      AND a.cagente = s.cagente
      AND d.cidioma = 1
      AND d.cparpro = p.cparpro
      AND d.cvalpar = p.cvalpar
      AND p.sproduc = s.sproduc
      AND p.cparpro = 'AGRPRODUCTOS'
      AND m1.sseguro = m.sseguro
      /* Las anulaciones 322, 324 programadas han de sacar información
         de su movimiento anterior siempre que este sea cmotmov 221, 236 
         221 , Anulación programada al vencimiento
         236 , Anulación programada al próximo recibo
         322 , Anulación por vencimiento de la póliza
         324 , Anulación inmediata
      */
      AND m1.nmovimi IN LEAST(m.nmovimi,
                              NVL((SELECT w.nmovimi
                                     FROM movseguro w
                                    WHERE w.cmotmov IN(221, 236)
                                      AND w.sseguro = m.sseguro
                                      AND w.nmovimi =
                                               m.nmovimi - DECODE(m.cmotmov,
                                                                  322, 1,
                                                                  324, 1,
                                                                  0)),
                                  999999))
      AND x.cidioma = 1
      AND x.cmotmov = m.cmotmov
      AND m.sseguro = s.sseguro
      AND m.cmovseg = 3
      AND m.nmovimi = (SELECT MAX(y.nmovimi)
                         FROM movseguro y
                        WHERE y.sseguro = s.sseguro)
      AND s.sseguro NOT IN(SELECT 1
                             FROM vi_certificados_0 v0
                            WHERE v0.sseguro = s.sseguro) 
 
 
;
  GRANT UPDATE ON "AXIS"."BORRAR_JGR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."BORRAR_JGR" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."BORRAR_JGR" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."BORRAR_JGR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."BORRAR_JGR" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."BORRAR_JGR" TO "PROGRAMADORESCSI";
