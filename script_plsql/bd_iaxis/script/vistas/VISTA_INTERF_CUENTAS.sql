--------------------------------------------------------
--  DDL for View VISTA_INTERF_CUENTAS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "AXIS"."VISTA_INTERF_CUENTAS" ("CUENTA", "SUBCUENTA", "DESC_CUENTA", "VALOR_CUENTA", "TIPOLIBRO", "SIDEPAG", "RENDIM", "TTIPPAG", "SUCURSAL") AS 
  SELECT   '519095', '4023', 'Cesión',
            pac_corretaje.f_impcor_agente(SUM(NVL(s.isinretpag, 0)
                                              - NVL(s.iresrcmpag, 0)
                                              + NVL(st.ipenali_moncia, 0)),
                                          ac.cagente, si.sseguro, si.nmovimi) importe,
            'AL', s.sidepag, 1, 1,
            LPAD
               (NVL
                   (SUBSTR
                       (pac_redcomercial.f_busca_padre(sg.cempres,
                                                       NVL(ac.cagente,
                                                           NVL(si.cagente,
                                                               sg.cagente)),
                                                       NULL, si.fsinies),
                        LENGTH
                              (pac_redcomercial.f_busca_padre(sg.cempres,
                                                              NVL(ac.cagente,
                                                                  NVL(si.cagente,
                                                                      sg.cagente)),
                                                              NULL, si.fsinies))
                        - 2,
                        3),
                    '000'),
                3, 0) sucursal
       FROM sin_siniestro si, sin_tramita_pago s, sin_tramita_reserva st,
            sin_tramita_pago_gar stpg, seguros sg, age_corretaje ac
      WHERE s.nsinies = si.nsinies
        AND((si.ccausin = 5
             AND si.cmotsin IN(0, 3))
            OR(si.ccausin = 4
               AND si.cmotsin = 0))
        AND s.isinretpag IS NOT NULL
        AND st.nsinies = si.nsinies
        ----AND st.sidepag = s.sidepag
        AND stpg.sidepag = s.sidepag
        AND stpg.ctipres = st.ctipres
        AND stpg.nmovres = st.nmovres
        AND si.sseguro = sg.sseguro
        AND si.sseguro = ac.sseguro(+)
        AND(ac.nmovimi IS NULL
            OR(ac.nmovimi = (SELECT MAX(nmovimi)
                               FROM age_corretaje ac2
                              WHERE ac2.sseguro = ac.sseguro
                                AND ac2.nmovimi <= si.nmovimi)))
   GROUP BY s.sidepag, sg.cempres, si.sseguro, si.nmovimi, si.fsinies, ac.cagente, si.cagente,
            sg.cagente
   UNION ALL
   SELECT   '419595', '12', 'Ingreso (Multa) por retiro de rendimientos',
            pac_corretaje.f_impcor_agente(-1 * SUM(NVL(st.ipenali_moncia, 0)),
                                          ac.cagente, si.sseguro, si.nmovimi) importe,
            'AL', s.sidepag, 1, 1,
            LPAD
               (NVL
                   (SUBSTR
                       (pac_redcomercial.f_busca_padre(sg.cempres,
                                                       NVL(ac.cagente,
                                                           NVL(si.cagente,
                                                               sg.cagente)),
                                                       NULL, si.fsinies),
                        LENGTH
                              (pac_redcomercial.f_busca_padre(sg.cempres,
                                                              NVL(ac.cagente,
                                                                  NVL(si.cagente,
                                                                      sg.cagente)),
                                                              NULL, si.fsinies))
                        - 2,
                        3),
                    '000'),
                3, 0) sucursal
       FROM sin_tramita_pago s, sin_siniestro si, sin_tramita_reserva st,
            sin_tramita_pago_gar stpg, seguros sg, age_corretaje ac
      WHERE s.nsinies = si.nsinies
        AND((si.ccausin = 5
             AND si.cmotsin IN(0, 3))
            OR(si.ccausin = 4
               AND si.cmotsin = 0))
        AND s.isinretpag IS NOT NULL
        AND st.nsinies = si.nsinies
        ----AND st.sidepag = s.sidepag
        AND stpg.sidepag = s.sidepag
        AND stpg.ctipres = st.ctipres
        AND stpg.nmovres = st.nmovres
        AND si.sseguro = sg.sseguro
        AND si.sseguro = ac.sseguro(+)
        AND(ac.nmovimi IS NULL
            OR(ac.nmovimi = (SELECT MAX(nmovimi)
                               FROM age_corretaje ac2
                              WHERE ac2.sseguro = ac.sseguro
                                AND ac2.nmovimi <= si.nmovimi)))
   GROUP BY s.sidepag, sg.cempres, si.sseguro, si.nmovimi, si.fsinies, ac.cagente, si.cagente,
            sg.cagente
   UNION ALL
   SELECT '519095', '4026', 'Rescate',
          pac_corretaje.f_impcor_agente(NVL(s.isinretpag, 0), ac.cagente, si.sseguro,
                                        si.nmovimi) importe,
          'AL', s.sidepag, 1, 1,
          LPAD
             (NVL
                 (SUBSTR
                     (pac_redcomercial.f_busca_padre(sg.cempres,
                                                     NVL(ac.cagente,
                                                         NVL(si.cagente, sg.cagente)),
                                                     NULL, si.fsinies),
                      LENGTH(pac_redcomercial.f_busca_padre(sg.cempres,
                                                            NVL(ac.cagente,
                                                                NVL(si.cagente,
                                                                    sg.cagente)),
                                                            NULL, si.fsinies))
                      - 2,
                      3),
                  '000'),
              3, 0) sucursal
     FROM sin_tramita_pago s, sin_siniestro si, seguros sg, age_corretaje ac
    WHERE s.nsinies = si.nsinies
      AND s.isinretpag IS NOT NULL
      AND si.ccausin = 4
      AND si.cmotsin IN(1, 2)
      AND si.sseguro = sg.sseguro
      AND si.sseguro = ac.sseguro(+)
      AND(ac.nmovimi IS NULL
          OR(ac.nmovimi = (SELECT MAX(nmovimi)
                             FROM age_corretaje ac2
                            WHERE ac2.sseguro = ac.sseguro
                              AND ac2.nmovimi <= si.nmovimi)))
   UNION ALL
   SELECT '510210', '0101', 'Siniestros pagados Año Actual',
          pac_corretaje.f_impcor_agente(NVL(s.isinretpag, 0), ac.cagente, si.sseguro,
                                        si.nmovimi) importe,
          'AL', s.sidepag, 1, 1,
          LPAD
             (NVL
                 (SUBSTR
                     (pac_redcomercial.f_busca_padre(sg.cempres,
                                                     NVL(ac.cagente,
                                                         NVL(si.cagente, sg.cagente)),
                                                     NULL, si.fsinies),
                      LENGTH(pac_redcomercial.f_busca_padre(sg.cempres,
                                                            NVL(ac.cagente,
                                                                NVL(si.cagente,
                                                                    sg.cagente)),
                                                            NULL, si.fsinies))
                      - 2,
                      3),
                  '000'),
              3, 0) sucursal
     FROM sin_tramita_pago s, sin_siniestro si, seguros sg, age_corretaje ac
    WHERE (SELECT COUNT(1)
             FROM sin_tramita_reserva
            WHERE sidepag = s.sidepag
              AND ctipres IN(1, 2, 4)) > 0
      AND s.nsinies = si.nsinies
      AND si.ccausin NOT IN(4, 5)
      AND(sg.sproduc IN(6007, 6008)
          OR sg.cramo = 103)
      AND sg.sseguro = si.sseguro
      AND s.isinretpag IS NOT NULL
      AND TO_CHAR(si.falta, 'YYYY') = TO_CHAR(f_sysdate, 'YYYY')
      AND si.sseguro = ac.sseguro(+)
      AND(ac.nmovimi IS NULL
          OR(ac.nmovimi = (SELECT MAX(nmovimi)
                             FROM age_corretaje ac2
                            WHERE ac2.sseguro = ac.sseguro
                              AND ac2.nmovimi <= si.nmovimi)))
   UNION ALL
   SELECT '510210', '0102', 'Siniestros liquidados por pagar Año Anterior',
          pac_corretaje.f_impcor_agente(NVL(s.isinretpag, 0), ac.cagente, si.sseguro,
                                        si.nmovimi) importe,
          'AL', s.sidepag, 1, 1,
          LPAD
             (NVL
                 (SUBSTR
                     (pac_redcomercial.f_busca_padre(sg.cempres,
                                                     NVL(ac.cagente,
                                                         NVL(si.cagente, sg.cagente)),
                                                     NULL, si.fsinies),
                      LENGTH(pac_redcomercial.f_busca_padre(sg.cempres,
                                                            NVL(ac.cagente,
                                                                NVL(si.cagente,
                                                                    sg.cagente)),
                                                            NULL, si.fsinies))
                      - 2,
                      3),
                  '000'),
              3, 0) sucursal
     FROM sin_tramita_pago s, sin_siniestro si, seguros sg, age_corretaje ac
    WHERE (SELECT COUNT(1)
             FROM sin_tramita_reserva
            WHERE sidepag = s.sidepag
              AND ctipres IN(1, 2, 4)) > 0
      AND s.nsinies = si.nsinies
      AND si.ccausin NOT IN(4, 5)
      AND(sg.sproduc IN(6007, 6008)
          OR sg.cramo = 103)
      AND sg.sseguro = si.sseguro
      AND s.isinretpag IS NOT NULL
      AND TO_CHAR(si.falta, 'YYYY') <> TO_CHAR(f_sysdate, 'YYYY')
      AND si.sseguro = ac.sseguro(+)
      AND(ac.nmovimi IS NULL
          OR(ac.nmovimi = (SELECT MAX(nmovimi)
                             FROM age_corretaje ac2
                            WHERE ac2.sseguro = ac.sseguro
                              AND ac2.nmovimi <= si.nmovimi)))
   UNION ALL
   SELECT   '510210', '0103', 'Honorario Atención de Siniestros',
            pac_corretaje.f_impcor_agente(NVL(SUM(stpg.isinretpag), 0), ac.cagente,
                                          si.sseguro, si.nmovimi) importe,
            'AL', s.sidepag, 1, 1,
            LPAD
               (NVL
                   (SUBSTR
                       (pac_redcomercial.f_busca_padre(sg.cempres,
                                                       NVL(ac.cagente,
                                                           NVL(si.cagente,
                                                               sg.cagente)),
                                                       NULL, si.fsinies),
                        LENGTH
                              (pac_redcomercial.f_busca_padre(sg.cempres,
                                                              NVL(ac.cagente,
                                                                  NVL(si.cagente,
                                                                      sg.cagente)),
                                                              NULL, si.fsinies))
                        - 2,
                        3),
                    '000'),
                3, 0) sucursal
       FROM seguros sg, sin_siniestro si, sin_tramita_reserva srv, sin_tramita_pago s,
            sin_tramita_pago_gar stpg, age_corretaje ac
      WHERE sg.sproduc IN(6007, 6008)
        AND sg.sseguro = si.sseguro
        AND si.ccausin NOT IN(4, 5)
        AND srv.nsinies = si.nsinies
        AND srv.ctipres NOT IN(1, 2, 4)
        AND(srv.ctipgas BETWEEN 1 AND 9
            OR srv.ctipgas IN(12, 12, 22, 23))
        AND s.nsinies = srv.nsinies
        AND s.isinretpag IS NOT NULL
        AND stpg.sidepag = s.sidepag
        AND stpg.ctipres = srv.ctipres
        AND stpg.nmovres = srv.nmovres
        AND si.sseguro = ac.sseguro(+)
        AND(ac.nmovimi IS NULL
            OR(ac.nmovimi = (SELECT MAX(nmovimi)
                               FROM age_corretaje ac2
                              WHERE ac2.sseguro = ac.sseguro
                                AND ac2.nmovimi <= si.nmovimi)))
   GROUP BY s.sidepag, sg.cempres, si.sseguro, si.nmovimi, si.fsinies, ac.cagente, si.cagente,
            sg.cagente
   UNION ALL
   SELECT   '510210', '0104', 'Asistencias atención de Siniestros',
            pac_corretaje.f_impcor_agente(SUM(NVL(stpg.isinretpag, 0)), ac.cagente,
                                          si.sseguro, si.nmovimi) importe,
            'AL', s.sidepag, 1, 1,
            LPAD
               (NVL
                   (SUBSTR
                       (pac_redcomercial.f_busca_padre(sg.cempres,
                                                       NVL(ac.cagente,
                                                           NVL(si.cagente,
                                                               sg.cagente)),
                                                       NULL, si.fsinies),
                        LENGTH
                              (pac_redcomercial.f_busca_padre(sg.cempres,
                                                              NVL(ac.cagente,
                                                                  NVL(si.cagente,
                                                                      sg.cagente)),
                                                              NULL, si.fsinies))
                        - 2,
                        3),
                    '000'),
                3, 0) sucursal
       FROM seguros sg, sin_siniestro si, sin_tramita_reserva srv, sin_tramita_pago s,
            sin_tramita_pago_gar stpg, age_corretaje ac
      WHERE sg.sproduc IN(6007, 6008)
        AND sg.sseguro = si.sseguro
        AND si.ccausin NOT IN(4, 5)
        AND srv.nsinies = si.nsinies
        AND srv.ctipres NOT IN(1, 2, 4)
        AND srv.ctipgas = 24
        AND s.nsinies = srv.nsinies
        AND s.isinretpag IS NOT NULL
        AND stpg.sidepag = s.sidepag
        AND stpg.ctipres = srv.ctipres
        AND stpg.nmovres = srv.nmovres
        AND si.sseguro = ac.sseguro(+)
        AND(ac.nmovimi IS NULL
            OR(ac.nmovimi = (SELECT MAX(nmovimi)
                               FROM age_corretaje ac2
                              WHERE ac2.sseguro = ac.sseguro
                                AND ac2.nmovimi <= si.nmovimi)))
   GROUP BY s.sidepag, sg.cempres, si.sseguro, si.nmovimi, si.fsinies, ac.cagente, si.cagente,
            sg.cagente
   UNION ALL
   SELECT   '510210', '0105', 'Administración Atención de Siniestros',
            pac_corretaje.f_impcor_agente(SUM(NVL(s.isinretpag, 0)), ac.cagente,
                                          si.sseguro, si.nmovimi) importe,
            'AL', s.sidepag, 1, 1,
            LPAD
               (NVL
                   (SUBSTR
                       (pac_redcomercial.f_busca_padre(sg.cempres,
                                                       NVL(ac.cagente,
                                                           NVL(si.cagente,
                                                               sg.cagente)),
                                                       NULL, si.fsinies),
                        LENGTH
                              (pac_redcomercial.f_busca_padre(sg.cempres,
                                                              NVL(ac.cagente,
                                                                  NVL(si.cagente,
                                                                      sg.cagente)),
                                                              NULL, si.fsinies))
                        - 2,
                        3),
                    '000'),
                3, 0) sucursal
       FROM seguros sg, sin_siniestro si, sin_tramita_reserva srv, sin_tramita_pago s,
            sin_tramita_pago_gar stpg, age_corretaje ac
      WHERE sg.sproduc IN(6007, 6008)
        AND sg.sseguro = si.sseguro
        AND si.ccausin NOT IN(4, 5)
        AND srv.nsinies = si.nsinies
        AND srv.ctipres NOT IN(1, 2, 4)
        AND srv.ctipgas IN(13, 14, 16, 17, 18, 19, 20, 21)
        AND s.nsinies = srv.nsinies
        AND s.isinretpag IS NOT NULL
        AND stpg.sidepag = s.sidepag
        AND stpg.ctipres = srv.ctipres
        AND stpg.nmovres = srv.nmovres
        AND si.sseguro = ac.sseguro(+)
        AND(ac.nmovimi IS NULL
            OR(ac.nmovimi = (SELECT MAX(nmovimi)
                               FROM age_corretaje ac2
                              WHERE ac2.sseguro = ac.sseguro
                                AND ac2.nmovimi <= si.nmovimi)))
   GROUP BY s.sidepag, sg.cempres, si.sseguro, si.nmovimi, si.fsinies, ac.cagente, si.cagente,
            sg.cagente
   UNION ALL
   SELECT   '510210', '0106', 'Viajes Atención de Siniestros',
            pac_corretaje.f_impcor_agente(SUM(NVL(stpg.isinretpag, 0)), ac.cagente,
                                          si.sseguro, si.nmovimi) importe,
            'AL', s.sidepag, 1, 1,
            LPAD
               (NVL
                   (SUBSTR
                       (pac_redcomercial.f_busca_padre(sg.cempres,
                                                       NVL(ac.cagente,
                                                           NVL(si.cagente,
                                                               sg.cagente)),
                                                       NULL, si.fsinies),
                        LENGTH
                              (pac_redcomercial.f_busca_padre(sg.cempres,
                                                              NVL(ac.cagente,
                                                                  NVL(si.cagente,
                                                                      sg.cagente)),
                                                              NULL, si.fsinies))
                        - 2,
                        3),
                    '000'),
                3, 0) sucursal
       FROM seguros sg, sin_siniestro si, sin_tramita_reserva srv, sin_tramita_pago s,
            sin_tramita_pago_gar stpg, age_corretaje ac
      WHERE sg.sproduc IN(6007, 6008)
        AND sg.sseguro = si.sseguro
        AND si.ccausin NOT IN(4, 5)
        AND srv.nsinies = si.nsinies
        AND srv.ctipres NOT IN(1, 2, 4)
        AND srv.ctipgas IN(10, 11)
        AND s.nsinies = srv.nsinies
        AND s.isinretpag IS NOT NULL
        AND stpg.sidepag = s.sidepag
        AND stpg.ctipres = srv.ctipres
        AND stpg.nmovres = srv.nmovres
        AND si.sseguro = ac.sseguro(+)
        AND(ac.nmovimi IS NULL
            OR(ac.nmovimi = (SELECT MAX(nmovimi)
                               FROM age_corretaje ac2
                              WHERE ac2.sseguro = ac.sseguro
                                AND ac2.nmovimi <= si.nmovimi)))
   GROUP BY s.sidepag, sg.cempres, si.sseguro, si.nmovimi, si.fsinies, ac.cagente, si.cagente,
            sg.cagente
   UNION ALL
   SELECT '510213', '0101', 'Siniestros pagados con Reserva Matemática Año Actual',
          pac_corretaje.f_impcor_agente(NVL(s.isinretpag, 0), ac.cagente, si.sseguro,
                                        si.nmovimi) importe,
          'AL', s.sidepag, 1, 1,
          LPAD
             (NVL
                 (SUBSTR
                     (pac_redcomercial.f_busca_padre(sg.cempres,
                                                     NVL(ac.cagente,
                                                         NVL(si.cagente, sg.cagente)),
                                                     NULL, si.fsinies),
                      LENGTH(pac_redcomercial.f_busca_padre(sg.cempres,
                                                            NVL(ac.cagente,
                                                                NVL(si.cagente,
                                                                    sg.cagente)),
                                                            NULL, si.fsinies))
                      - 2,
                      3),
                  '000'),
              3, 0) sucursal
     FROM sin_tramita_pago s, sin_siniestro si, seguros sg, age_corretaje ac
    WHERE (SELECT COUNT(1)
             FROM sin_tramita_reserva
            WHERE sidepag = s.sidepag
              AND ctipres IN(1, 2, 4)) > 0
      AND s.nsinies = si.nsinies
      AND si.ccausin NOT IN(4, 5)
      AND(sg.sproduc NOT IN(6007, 6008)
          AND sg.cramo = 101)
      AND sg.sseguro = si.sseguro
      AND s.isinretpag IS NOT NULL
      AND TO_CHAR(si.falta, 'YYYY') = TO_CHAR(f_sysdate, 'YYYY')
      AND si.sseguro = ac.sseguro(+)
      AND(ac.nmovimi IS NULL
          OR(ac.nmovimi = (SELECT MAX(nmovimi)
                             FROM age_corretaje ac2
                            WHERE ac2.sseguro = ac.sseguro
                              AND ac2.nmovimi <= si.nmovimi)))
   UNION ALL
   SELECT '510213', '0102', 'Siniestros pagados con Reserva Matemática Año Anterior',
          pac_corretaje.f_impcor_agente(NVL(s.isinretpag, 0), ac.cagente, si.sseguro,
                                        si.nmovimi) importe,
          'AL', s.sidepag, 1, 1,
          LPAD
             (NVL
                 (SUBSTR
                     (pac_redcomercial.f_busca_padre(sg.cempres,
                                                     NVL(ac.cagente,
                                                         NVL(si.cagente, sg.cagente)),
                                                     NULL, si.fsinies),
                      LENGTH(pac_redcomercial.f_busca_padre(sg.cempres,
                                                            NVL(ac.cagente,
                                                                NVL(si.cagente,
                                                                    sg.cagente)),
                                                            NULL, si.fsinies))
                      - 2,
                      3),
                  '000'),
              3, 0) sucursal
     FROM sin_tramita_pago s, sin_siniestro si, seguros sg, age_corretaje ac
    WHERE (SELECT COUNT(1)
             FROM sin_tramita_reserva
            WHERE sidepag = s.sidepag
              AND ctipres IN(1, 2, 4)) > 0
      AND s.nsinies = si.nsinies
      AND si.ccausin NOT IN(4, 5)
      AND(sg.sproduc NOT IN(6007, 6008)
          AND sg.cramo = 101)
      AND sg.sseguro = si.sseguro
      AND s.isinretpag IS NOT NULL
      AND TO_CHAR(si.falta, 'YYYY') <> TO_CHAR(f_sysdate, 'YYYY')
      AND si.sseguro = ac.sseguro(+)
      AND(ac.nmovimi IS NULL
          OR(ac.nmovimi = (SELECT MAX(nmovimi)
                             FROM age_corretaje ac2
                            WHERE ac2.sseguro = ac.sseguro
                              AND ac2.nmovimi <= si.nmovimi)))
   UNION ALL
   SELECT   '510210', '0103', 'Honorario Atención de Siniestros',
            pac_corretaje.f_impcor_agente(NVL(SUM(stpg.isinretpag), 0), ac.cagente,
                                          si.sseguro, si.nmovimi) importe,
            'AL', s.sidepag, 1, 1,
            LPAD
               (NVL
                   (SUBSTR
                       (pac_redcomercial.f_busca_padre(sg.cempres,
                                                       NVL(ac.cagente,
                                                           NVL(si.cagente,
                                                               sg.cagente)),
                                                       NULL, si.fsinies),
                        LENGTH
                              (pac_redcomercial.f_busca_padre(sg.cempres,
                                                              NVL(ac.cagente,
                                                                  NVL(si.cagente,
                                                                      sg.cagente)),
                                                              NULL, si.fsinies))
                        - 2,
                        3),
                    '000'),
                3, 0) sucursal
       FROM seguros sg, sin_siniestro si, sin_tramita_reserva srv, sin_tramita_pago s,
            sin_tramita_pago_gar stpg, age_corretaje ac
      WHERE sg.sproduc NOT IN(6007, 6008)
        AND sg.sseguro = si.sseguro
        AND si.ccausin NOT IN(4, 5)
        AND srv.nsinies = si.nsinies
        AND srv.ctipres NOT IN(1, 2, 4)
        AND(srv.ctipgas BETWEEN 1 AND 9
            OR srv.ctipgas IN(12, 12, 22, 23))
        AND s.nsinies = srv.nsinies
        AND s.isinretpag IS NOT NULL
        AND stpg.sidepag = s.sidepag
        AND stpg.ctipres = srv.ctipres
        AND stpg.nmovres = srv.nmovres
        AND si.sseguro = ac.sseguro(+)
        AND(ac.nmovimi IS NULL
            OR(ac.nmovimi = (SELECT MAX(nmovimi)
                               FROM age_corretaje ac2
                              WHERE ac2.sseguro = ac.sseguro
                                AND ac2.nmovimi <= si.nmovimi)))
   GROUP BY s.sidepag, sg.cempres, si.sseguro, si.nmovimi, si.fsinies, ac.cagente, si.cagente,
            sg.cagente
   UNION ALL
   SELECT   '510210', '0104', 'Asistencias atención de Siniestros',
            pac_corretaje.f_impcor_agente(SUM(NVL(stpg.isinretpag, 0)), ac.cagente,
                                          si.sseguro, si.nmovimi) importe,
            'AL', s.sidepag, 1, 1,
            LPAD
               (NVL
                   (SUBSTR
                       (pac_redcomercial.f_busca_padre(sg.cempres,
                                                       NVL(ac.cagente,
                                                           NVL(si.cagente,
                                                               sg.cagente)),
                                                       NULL, si.fsinies),
                        LENGTH
                              (pac_redcomercial.f_busca_padre(sg.cempres,
                                                              NVL(ac.cagente,
                                                                  NVL(si.cagente,
                                                                      sg.cagente)),
                                                              NULL, si.fsinies))
                        - 2,
                        3),
                    '000'),
                3, 0) sucursal
       FROM seguros sg, sin_siniestro si, sin_tramita_reserva srv, sin_tramita_pago s,
            sin_tramita_pago_gar stpg, age_corretaje ac
      WHERE sg.sproduc NOT IN(6007, 6008)
        AND sg.sseguro = si.sseguro
        AND si.ccausin NOT IN(4, 5)
        AND srv.nsinies = si.nsinies
        AND srv.ctipres NOT IN(1, 2, 4)
        AND srv.ctipgas = 24
        AND s.nsinies = srv.nsinies
        AND s.isinretpag IS NOT NULL
        AND stpg.sidepag = s.sidepag
        AND stpg.ctipres = srv.ctipres
        AND stpg.nmovres = srv.nmovres
        AND si.sseguro = ac.sseguro(+)
        AND(ac.nmovimi IS NULL
            OR(ac.nmovimi = (SELECT MAX(nmovimi)
                               FROM age_corretaje ac2
                              WHERE ac2.sseguro = ac.sseguro
                                AND ac2.nmovimi <= si.nmovimi)))
   GROUP BY s.sidepag, sg.cempres, si.sseguro, si.nmovimi, si.fsinies, ac.cagente, si.cagente,
            sg.cagente
   UNION ALL
   SELECT   '510210', '0105', 'Administración Atención de Siniestros',
            pac_corretaje.f_impcor_agente(SUM(NVL(stpg.isinretpag, 0)), ac.cagente,
                                          si.sseguro, si.nmovimi) importe,
            'AL', s.sidepag, 1, 1,
            LPAD
               (NVL
                   (SUBSTR
                       (pac_redcomercial.f_busca_padre(sg.cempres,
                                                       NVL(ac.cagente,
                                                           NVL(si.cagente,
                                                               sg.cagente)),
                                                       NULL, si.fsinies),
                        LENGTH
                              (pac_redcomercial.f_busca_padre(sg.cempres,
                                                              NVL(ac.cagente,
                                                                  NVL(si.cagente,
                                                                      sg.cagente)),
                                                              NULL, si.fsinies))
                        - 2,
                        3),
                    '000'),
                3, 0) sucursal
       FROM seguros sg, sin_siniestro si, sin_tramita_reserva srv, sin_tramita_pago s,
            sin_tramita_pago_gar stpg, age_corretaje ac
      WHERE sg.sproduc NOT IN(6007, 6008)
        AND sg.sseguro = si.sseguro
        AND si.ccausin NOT IN(4, 5)
        AND srv.nsinies = si.nsinies
        AND srv.ctipres NOT IN(1, 2, 4)
        AND srv.ctipgas IN(13, 14, 16, 17, 18, 19, 20, 21)
        AND s.nsinies = srv.nsinies
        AND s.isinretpag IS NOT NULL
        AND stpg.sidepag = s.sidepag
        AND stpg.ctipres = srv.ctipres
        AND stpg.nmovres = srv.nmovres
        AND si.sseguro = ac.sseguro(+)
        AND(ac.nmovimi IS NULL
            OR(ac.nmovimi = (SELECT MAX(nmovimi)
                               FROM age_corretaje ac2
                              WHERE ac2.sseguro = ac.sseguro
                                AND ac2.nmovimi <= si.nmovimi)))
   GROUP BY s.sidepag, sg.cempres, si.sseguro, si.nmovimi, si.fsinies, ac.cagente, si.cagente,
            sg.cagente
   UNION ALL
   SELECT   '510210', '0106', 'Viajes Atención de Siniestros',
            pac_corretaje.f_impcor_agente(SUM(NVL(stpg.isinretpag, 0)), ac.cagente,
                                          si.sseguro, si.nmovimi) importe,
            'AL', s.sidepag, 1, 1,
            LPAD
               (NVL
                   (SUBSTR
                       (pac_redcomercial.f_busca_padre(sg.cempres,
                                                       NVL(ac.cagente,
                                                           NVL(si.cagente,
                                                               sg.cagente)),
                                                       NULL, si.fsinies),
                        LENGTH
                              (pac_redcomercial.f_busca_padre(sg.cempres,
                                                              NVL(ac.cagente,
                                                                  NVL(si.cagente,
                                                                      sg.cagente)),
                                                              NULL, si.fsinies))
                        - 2,
                        3),
                    '000'),
                3, 0) sucursal
       FROM seguros sg, sin_siniestro si, sin_tramita_reserva srv, sin_tramita_pago s,
            sin_tramita_pago_gar stpg, age_corretaje ac
      WHERE sg.sproduc NOT IN(6007, 6008)
        AND sg.sseguro = si.sseguro
        AND si.ccausin NOT IN(4, 5)
        AND srv.nsinies = si.nsinies
        AND srv.ctipres NOT IN(1, 2, 4)
        AND srv.ctipgas IN(10, 11)
        AND s.nsinies = srv.nsinies
        AND s.isinretpag IS NOT NULL
        AND stpg.sidepag = s.sidepag
        AND stpg.ctipres = srv.ctipres
        AND stpg.nmovres = srv.nmovres
        AND si.sseguro = ac.sseguro(+)
        AND(ac.nmovimi IS NULL
            OR(ac.nmovimi = (SELECT MAX(nmovimi)
                               FROM age_corretaje ac2
                              WHERE ac2.sseguro = ac.sseguro
                                AND ac2.nmovimi <= si.nmovimi)))
   GROUP BY s.sidepag, sg.cempres, si.sseguro, si.nmovimi, si.fsinies, ac.cagente, si.cagente,
            sg.cagente
   UNION ALL
   SELECT '519095', '4024', 'Rendimiento Cesión',
          pac_corretaje.f_impcor_agente(NVL(s.iresrcmpag, 0), ac.cagente, si.sseguro,
                                        si.nmovimi) importe,
          'AL', s.sidepag, 1, 1,
          LPAD
             (NVL
                 (SUBSTR
                     (pac_redcomercial.f_busca_padre(sg.cempres,
                                                     NVL(ac.cagente,
                                                         NVL(si.cagente, sg.cagente)),
                                                     NULL, si.fsinies),
                      LENGTH(pac_redcomercial.f_busca_padre(sg.cempres,
                                                            NVL(ac.cagente,
                                                                NVL(si.cagente,
                                                                    sg.cagente)),
                                                            NULL, si.fsinies))
                      - 2,
                      3),
                  '000'),
              3, 0) sucursal
     FROM seguros sg, sin_tramita_pago s, sin_siniestro si, age_corretaje ac
    WHERE s.nsinies = si.nsinies
      AND si.ccausin IN(4, 5)
      AND s.iresrcmpag IS NOT NULL
      AND sg.sseguro = si.sseguro
      AND si.sseguro = ac.sseguro(+)
      AND(ac.nmovimi IS NULL
          OR(ac.nmovimi = (SELECT MAX(nmovimi)
                             FROM age_corretaje ac2
                            WHERE ac2.sseguro = ac.sseguro
                              AND ac2.nmovimi <= si.nmovimi)))
   UNION ALL
   SELECT '141110', '03', 'Desembolso préstamo', NVL(p.icapital_monpago, 0) importe, 'AL',
          TO_NUMBER(p.ctapres), 1, 6,
          LPAD(NVL(SUBSTR(pac_redcomercial.f_busca_padre(s.cempres, s.cagente, NULL,
                                                         p.fcontab),
                          LENGTH(pac_redcomercial.f_busca_padre(s.cempres, s.cagente,
                                                                NULL, p.fcontab))
                          - 2,
                          3),
                   '000'),
               3, 0) sucursal
     FROM prestamopago p, prestamoseg ps, seguros s
    WHERE ps.ctapres = p.ctapres
      AND s.sseguro = ps.sseguro
   UNION ALL
   SELECT '289595', '18', 'Comisiones Retornos',
          pac_corretaje.f_impcor_agente(v.itotalr, ac.cagente, r.sseguro, r.nmovimi) importe,
          'AL', m.nrecibo, 1, 7,
          LPAD
             (NVL
                 (SUBSTR
                     (pac_redcomercial.f_busca_padre(sg.cempres,
                                                     NVL(ac.cagente,
                                                         NVL(r.cagente, sg.cagente)),
                                                     NULL, m.fefeadm),
                      LENGTH(pac_redcomercial.f_busca_padre(sg.cempres,
                                                            NVL(ac.cagente,
                                                                NVL(r.cagente,
                                                                    sg.cagente)),
                                                            NULL, m.fefeadm))
                      - 2,
                      3),
                  '000'),
              3, 0) sucursal
     FROM movrecibo m, recibos r, vdetrecibos_monpol v, seguros sg, age_corretaje ac
    WHERE m.nrecibo = r.nrecibo
      AND r.ctiprec = 13
      AND v.nrecibo = r.nrecibo
      AND m.smovrec IN(SELECT MAX(smovrec)
                         FROM movrecibo
                        WHERE nrecibo = v.nrecibo)
      AND sg.sseguro = r.sseguro
      AND r.sseguro = ac.sseguro(+)
      AND(ac.nmovimi IS NULL
          OR(ac.nmovimi = (SELECT MAX(nmovimi)
                             FROM age_corretaje ac2
                            WHERE ac2.sseguro = ac.sseguro
                              AND ac2.nmovimi <= r.nmovimi)))
   UNION ALL
   SELECT '289595', '18', 'Comisiones Retornos',
          pac_corretaje.f_impcor_agente(v.itotalr *(-1), ac.cagente, r.sseguro,
                                        r.nmovimi) importe,
          'AL', m.nrecibo, 1, 7,
          LPAD
             (NVL
                 (SUBSTR
                     (pac_redcomercial.f_busca_padre(sg.cempres,
                                                     NVL(ac.cagente,
                                                         NVL(r.cagente, sg.cagente)),
                                                     NULL, m.fefeadm),
                      LENGTH(pac_redcomercial.f_busca_padre(sg.cempres,
                                                            NVL(ac.cagente,
                                                                NVL(r.cagente,
                                                                    sg.cagente)),
                                                            NULL, m.fefeadm))
                      - 2,
                      3),
                  '000'),
              3, 0) sucursal
     FROM movrecibo m, recibos r, vdetrecibos_monpol v, seguros sg, age_corretaje ac
    WHERE m.nrecibo = r.nrecibo
      AND r.ctiprec = 15
      AND v.nrecibo = r.nrecibo
      AND m.smovrec IN(SELECT MAX(smovrec)
                         FROM movrecibo
                        WHERE nrecibo = v.nrecibo)
      AND sg.sseguro = r.sseguro
      AND r.sseguro = ac.sseguro(+)
      AND(ac.nmovimi IS NULL
          OR(ac.nmovimi = (SELECT MAX(nmovimi)
                             FROM age_corretaje ac2
                            WHERE ac2.sseguro = ac.sseguro
                              AND ac2.nmovimi <= r.nmovimi)))
   UNION ALL
   SELECT '254500', '12', 'Cuenta por pagar por reaseguradores', m.iimport_moncon, 'AL',
          p.spagrea, 1, 8, '010' sucursal
     FROM movctatecnica m, pagos_ctatec_rea p
    WHERE p.spagrea = m.spagrea
      AND p.ctipopag = 2
   UNION ALL
   SELECT '232000', '0201', 'Coaseguradores Cuenta Corriente Cedidas Primas', m.imovimi_moncon,
          'AL', p.spagcoa, 1, 9, '010' sucursal
     FROM ctacoaseguro m, pagos_ctatec_coa p
    WHERE p.spagcoa = m.spagcoa
      AND p.ctipopag = 2
;
  GRANT UPDATE ON "AXIS"."VISTA_INTERF_CUENTAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VISTA_INTERF_CUENTAS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."VISTA_INTERF_CUENTAS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."VISTA_INTERF_CUENTAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."VISTA_INTERF_CUENTAS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."VISTA_INTERF_CUENTAS" TO "PROGRAMADORESCSI";
