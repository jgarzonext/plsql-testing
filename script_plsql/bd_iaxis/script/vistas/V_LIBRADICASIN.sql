--------------------------------------------------------
--  DDL for View V_LIBRADICASIN
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."V_LIBRADICASIN" ("CEMPRES", "NPOLIZA", "NCERTIF", "NSINIES", "FNOTIFI", "FSINIES", "FALTA", "RAMO_SUP", "TIPO_EXP", "TIPIDE_ASEG", "NUMIDE_ASEG", "NOMBRE_ASEG", "TIPIDE_TOM", "NUMIDE_TOM", "NOMBRE_TOM", "TIPIDE_BEN", "NUMIDE_BEN", "NOMBRE_BEN", "FECHA_OCU", "FECHA_AVISO", "FECHA_PRESREC", "COD_COBERT", "COD_COBERT_SUP", "VAL_PRETEN", "IRES_INI", "FRES_INI", "IRESERVA_MONCIA", "IRES_PAGO", "FECHA_PAGO", "IRES_FIN", "ESTADO_SIN", "CAUEST_SIN", "LITIGIO", "CTRAMITAD") AS 
  SELECT s.cempres, s.npoliza, s.ncertif, si.nsinies, si.fnotifi, si.fsinies, si.falta,
          p.cramdgs ramo_sup, 'PD' tipo_exp, pa.ctipper tipide_aseg, pa.nnumide numide_aseg,
          TRIM(pda.tnombre || ' ' || pda.tapelli1 || ' ' || pda.tapelli2) nombre_aseg,
          pt.ctipper tipide_tom, pt.nnumide numide_tom,
          TRIM(pdt.tnombre || ' ' || pdt.tapelli1 || ' ' || pdt.tapelli2) nombre_tom,
          pb.ctipper tipide_ben, pb.nnumide numide_ben,
          TRIM(pdb.tnombre || ' ' || pdb.tapelli1 || ' ' || pdb.tapelli2) nombre_ben,
          si.fsinies fecha_ocu, si.fnotifi fecha_aviso,
          (SELECT MAX(frecibe)
             FROM sin_tramita_documento std
            WHERE nsinies = si.nsinies
              AND ntramit = 0
              AND NOT EXISTS(SELECT 1
                               FROM sin_tramita_documento
                              WHERE nsinies = std.nsinies
                                AND ntramit = std.ntramit
                                AND cobliga = 1
                                AND iddoc IS NULL)) fecha_presrec,
          res_ini.cgarant cod_cobert, res_ini.cramdgs cod_cobert_sup, si.iperit val_preten,
          res_ini.ireserva_moncia ires_ini, res_ini.fmovres fres_ini, res_ini.ireserva_moncia,
          (SELECT SUM(ipago_moncia)
             FROM sin_tramita_reserva
            WHERE nsinies = si.nsinies
              AND ntramit = 0
              AND ctipres = 1) ires_pago,
          (SELECT MAX(fefepag)
             FROM sin_tramita_pago sp, sin_tramita_movpago smp
            WHERE sp.nsinies = si.nsinies
              AND sp.ntramit = 0
              AND smp.sidepag = sp.sidepag
              AND smp.cestpag = 2
              AND smp.nmovpag = (SELECT MAX(nmovpag)
                                   FROM sin_tramita_movpago
                                  WHERE sidepag = smp.sidepag)) fecha_pago,
          (SELECT ireserva_moncia
             FROM sin_tramita_reserva
            WHERE nsinies = si.nsinies
              AND ntramit = 0
              AND ctipres = 1
              AND nmovres = (SELECT MAX(nmovres)
                               FROM sin_tramita_reserva
                              WHERE nsinies = si.nsinies
                                AND ntramit = 0
                                AND ctipres = 1)) ires_fin,
          sm.cestsin estado_sin, sm.ccauest cauest_sin,
          (SELECT MAX(st.ntramit)
             FROM sin_tramitacion st, sin_tramita_movimiento stm
            WHERE st.nsinies = si.nsinies
              AND st.ctramit = 11
              AND stm.nsinies = st.nsinies
              AND stm.ntramit = st.ntramit
              AND stm.cesttra IN(0, 1)
              AND stm.nmovtra = (SELECT MAX(nmovtra)
                                   FROM sin_tramita_movimiento
                                  WHERE nsinies = st.nsinies
                                    AND ntramit = st.ntramit)) litigio, sm.ctramitad
     FROM sin_siniestro si,
          seguros s,
          productos p,
          riesgos r,
          per_personas pa,
          per_detper pda,
          tomadores t,
          per_personas pt,
          per_detper pdt,
          (SELECT b.sseguro, pd.cagente, pd.sperson, pd.tapelli1, pd.tapelli2, pd.tnombre
             FROM benespseg b, per_detper pd
            WHERE pd.sperson = b.sperson
              AND b.nriesgo = 1
              AND b.ffinben IS NULL) pdb,
          per_personas pb,
          sin_movsiniestro sm,
          (SELECT str.nsinies, str.cgarant, str.nmovres, str.fmovres, str.ireserva_moncia,
                  g.cramdgs
             FROM sin_tramita_reserva str, sin_siniestro si2, seguros s2, garanpro g
            WHERE str.ntramit = 0
              AND str.ctipres = 1
              AND str.nmovres = (SELECT MIN(nmovres)
                                   FROM sin_tramita_reserva
                                  WHERE nsinies = str.nsinies
                                    AND ntramit = str.ntramit
                                    AND ctipres = str.ctipres)
              AND si2.nsinies = str.nsinies
              AND s2.sseguro = si2.sseguro
              AND g.sproduc = s2.sproduc
              AND g.cactivi = s2.cactivi
              AND g.cgarant = str.cgarant) res_ini
    WHERE s.sseguro = si.sseguro
      AND p.sproduc = s.sproduc
      AND r.sseguro = si.sseguro
      AND r.nriesgo = 1
      AND pa.sperson = r.sperson
      AND pda.sperson = r.sperson
      AND pda.cagente = ff_agente_cpervisio(s.cagente, f_sysdate, s.cempres)
      AND t.sseguro = si.sseguro
      AND t.nordtom = 1
      AND pt.sperson = t.sperson
      AND pdt.sperson = t.sperson
      AND pdt.cagente = ff_agente_cpervisio(s.cagente, f_sysdate, s.cempres)
      AND pdb.sseguro(+) = s.sseguro
      AND pdb.cagente(+) = ff_agente_cpervisio(s.cagente, f_sysdate, s.cempres)
      AND pb.sperson(+) = pdb.sperson
      AND sm.nsinies = si.nsinies
      AND sm.nmovsin = (SELECT MAX(nmovsin)
                          FROM sin_movsiniestro
                         WHERE nsinies = si.nsinies)
      AND res_ini.nsinies(+) = si.nsinies
;
  GRANT UPDATE ON "AXIS"."V_LIBRADICASIN" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."V_LIBRADICASIN" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."V_LIBRADICASIN" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."V_LIBRADICASIN" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."V_LIBRADICASIN" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."V_LIBRADICASIN" TO "PROGRAMADORESCSI";
