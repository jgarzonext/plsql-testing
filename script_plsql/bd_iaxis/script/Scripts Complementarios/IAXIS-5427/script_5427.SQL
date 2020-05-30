/* Formatted on 2019/10/16 17:37 (Formatter Plus v4.8.8) */
BEGIN
   DELETE      pds_supl_cod_config
         WHERE cconfig LIKE '%80011%';

   DELETE      pds_supl_permite
         WHERE cconfig LIKE '%80011%';

   DELETE      pds_supl_validacio
         WHERE cconfig LIKE '%80011%';

   DELETE      pds_supl_form
         WHERE cconfig LIKE '%80011%';

   DELETE      pds_post_supl
         WHERE cconfig LIKE '%80011%';

   DELETE      pds_supl_config
         WHERE cconfig LIKE '%80011%';

   INSERT INTO pds_supl_config
               (cconfig, cmotmov, sproduc, cmodo, ctipfec,
                tfecrec, suplcolec, cusualt, falta, cusumod, fmodifi
               )
        VALUES ('conf_237_80011_suplemento_tf', 237, 80011, 'SUPLEMENTO', 1,
                'F_SYSDATE', NULL, f_user, f_sysdate, NULL, NULL
               );

   INSERT INTO pds_supl_config
               (cconfig, cmotmov, sproduc, cmodo, ctipfec,
                tfecrec, suplcolec, cusualt, falta, cusumod, fmodifi
               )
        VALUES ('conf_825_80011_suplemento_tf', 825, 80011, 'SUPLEMENTO', 1,
                'F_SYSDATE', NULL, f_user, f_sysdate, NULL, NULL
               );

   INSERT INTO pds_supl_config
               (cconfig, cmotmov, sproduc, cmodo, ctipfec,
                tfecrec, suplcolec, cusualt, falta, cusumod, fmodifi
               )
        VALUES ('conf_685_80011_modif_prop', 685, 80011, 'MODIF_PROP', 1,
                'F_SYSDATE', NULL, f_user, f_sysdate, NULL, NULL
               );

   INSERT INTO pds_supl_config
               (cconfig, cmotmov, sproduc, cmodo, ctipfec,
                tfecrec, suplcolec, cusualt, falta, cusumod, fmodifi
               )
        VALUES ('conf_915_80011_suplemento_tf', 915, 80011, 'SUPLEMENTO', 1,
                'F_SYSDATE', NULL, f_user, f_sysdate, NULL, NULL
               );

   INSERT INTO pds_supl_config
               (cconfig, cmotmov, sproduc, cmodo, ctipfec,
                tfecrec, suplcolec, cusualt, falta, cusumod, fmodifi
               )
        VALUES ('conf_918_80011_suplemento_tf', 918, 80011, 'SUPLEMENTO', 1,
                'F_SYSDATE', NULL, f_user, f_sysdate, NULL, NULL
               );

   INSERT INTO pds_supl_config
               (cconfig, cmotmov, sproduc, cmodo, ctipfec,
                tfecrec, suplcolec, cusualt, falta, cusumod, fmodifi
               )
        VALUES ('conf_971_80011_suplemento_tf', 971, 80011, 'SUPLEMENTO', 1,
                'F_SYSDATE', NULL, f_user, f_sysdate, NULL, NULL
               );

   INSERT INTO pds_supl_config
               (cconfig, cmotmov, sproduc, cmodo, ctipfec,
                tfecrec, suplcolec, cusualt, falta, cusumod, fmodifi
               )
        VALUES ('conf_212_80011_suplemento_tf', 212, 80011, 'SUPLEMENTO', 1,
                'F_SYSDATE', NULL, f_user, f_sysdate, NULL, NULL
               );

   INSERT INTO pds_supl_config
               (cconfig, cmotmov, sproduc, cmodo, ctipfec,
                tfecrec, suplcolec, cusualt, falta, cusumod, fmodifi
               )
        VALUES ('conf_281_80011_suplemento_tf', 281, 80011, 'SUPLEMENTO', 1,
                'F_SYSDATE', NULL, f_user, f_sysdate, NULL, NULL
               );

   INSERT INTO pds_supl_config
               (cconfig, cmotmov, sproduc, cmodo, ctipfec,
                tfecrec, suplcolec, cusualt, falta, cusumod, fmodifi
               )
        VALUES ('conf_239_80011_suplemento_tf', 239, 80011, 'SUPLEMENTO', 1,
                'F_SYSDATE', NULL, f_user, f_sysdate, NULL, NULL
               );

   INSERT INTO pds_supl_config
               (cconfig, cmotmov, sproduc, cmodo, ctipfec,
                tfecrec, suplcolec, cusualt, falta, cusumod, fmodifi
               )
        VALUES ('conf_209_80011_suplemento_tf', 209, 80011, 'SUPLEMENTO', 1,
                'F_SYSDATE', NULL, f_user, f_sysdate, NULL, NULL
               );

   INSERT INTO pds_supl_config
               (cconfig, cmotmov, sproduc, cmodo, ctipfec,
                tfecrec, suplcolec, cusualt, falta, cusumod, fmodifi
               )
        VALUES ('conf_611_80011_suplemento_tf', 611, 80011, 'SUPLEMENTO', 1,
                'F_SYSDATE', NULL, f_user, f_sysdate, NULL, NULL
               );

   INSERT INTO pds_supl_config
               (cconfig, cmotmov, sproduc, cmodo, ctipfec,
                tfecrec, suplcolec, cusualt, falta, cusumod, fmodifi
               )
        VALUES ('conf_673_80011_suplemento_tf', 673, 80011, 'SUPLEMENTO', 1,
                'F_SYSDATE', NULL, f_user, f_sysdate, NULL, NULL
               );

   INSERT INTO pds_supl_config
               (cconfig, cmotmov, sproduc, cmodo, ctipfec,
                tfecrec, suplcolec, cusualt, falta, cusumod, fmodifi
               )
        VALUES ('conf_677_80011_suplemento_tf', 677, 80011, 'SUPLEMENTO', 1,
                'F_SYSDATE', NULL, f_user, f_sysdate, NULL, NULL
               );

   INSERT INTO pds_supl_config
               (cconfig, cmotmov, sproduc, cmodo, ctipfec,
                tfecrec, suplcolec, cusualt, falta, cusumod, fmodifi
               )
        VALUES ('conf_696_80011_suplemento_tf', 696, 80011, 'SUPLEMENTO', 1,
                'F_SYSDATE', NULL, f_user, f_sysdate, NULL, NULL
               );

   INSERT INTO pds_supl_config
               (cconfig, cmotmov, sproduc, cmodo, ctipfec,
                tfecrec, suplcolec, cusualt, falta, cusumod, fmodifi
               )
        VALUES ('conf_230_80011_suplemento_tf', 230, 80011, 'SUPLEMENTO', 1,
                'F_SYSDATE', NULL, f_user, f_sysdate, NULL, NULL
               );

   INSERT INTO pds_supl_config
               (cconfig, cmotmov, sproduc, cmodo, ctipfec,
                tfecrec, suplcolec, cusualt, falta, cusumod, fmodifi
               )
        VALUES ('conf_828_80011_suplemento_tf', 828, 80011, 'SUPLEMENTO', 1,
                'F_SYSDATE', NULL, f_user, f_sysdate, NULL, NULL
               );

   INSERT INTO pds_supl_config
               (cconfig, cmotmov, sproduc, cmodo, ctipfec,
                tfecrec, suplcolec, cusualt, falta, cusumod, fmodifi
               )
        VALUES ('conf_141_80011_suplemento_tf', 141, 80011, 'SUPLEMENTO', 1,
                'F_SYSDATE', NULL, f_user, f_sysdate, NULL, NULL
               );

   INSERT INTO pds_supl_config
               (cconfig, cmotmov, sproduc, cmodo, ctipfec,
                tfecrec, suplcolec, cusualt, falta, cusumod, fmodifi
               )
        VALUES ('conf_684_80011_suplemento_tf', 684, 80011, 'SUPLEMENTO', 1,
                'F_SYSDATE', NULL, f_user, f_sysdate, NULL, NULL
               );

   INSERT INTO pds_supl_config
               (cconfig, cmotmov, sproduc, cmodo, ctipfec,
                tfecrec, suplcolec, cusualt, falta, cusumod, fmodifi
               )
        VALUES ('conf_288_80011_suplemento_tf', 288, 80011, 'SUPLEMENTO', 1,
                'F_SYSDATE', NULL, f_user, f_sysdate, NULL, NULL
               );

   INSERT INTO pds_supl_config
               (cconfig, cmotmov, sproduc, cmodo, ctipfec,
                tfecrec, suplcolec, cusualt, falta, cusumod, fmodifi
               )
        VALUES ('conf_685_80011_suplemento_tf', 685, 80011, 'SUPLEMENTO', 1,
                'F_SYSDATE', NULL, f_user, f_sysdate, NULL, NULL
               );

   INSERT INTO pds_supl_config
               (cconfig, cmotmov, sproduc, cmodo, ctipfec,
                tfecrec, suplcolec, cusualt, falta, cusumod, fmodifi
               )
        VALUES ('conf_697_80011_suplemento_tf', 697, 80011, 'SUPLEMENTO', 1,
                'F_SYSDATE', NULL, f_user, f_sysdate, NULL, NULL
               );

   COMMIT;

   INSERT INTO pds_post_supl
               (cconfig, norden,
                tfuncion
               )
        VALUES ('conf_288_80011_suplemento_tf', 1,
                'pk_suplementos.f_update_rec_pend'
               );

   COMMIT;

   INSERT INTO pds_supl_form
               (cconfig, tform
               )
        VALUES ('conf_971_80011_suplemento_tf', 'BBDD'
               );

   INSERT INTO pds_supl_form
               (cconfig, tform
               )
        VALUES ('conf_209_80011_suplemento_tf', 'BBDD'
               );

   INSERT INTO pds_supl_form
               (cconfig, tform
               )
        VALUES ('conf_212_80011_suplemento_tf', 'BBDD'
               );

   INSERT INTO pds_supl_form
               (cconfig, tform
               )
        VALUES ('conf_230_80011_suplemento_tf', 'BBDD'
               );

   INSERT INTO pds_supl_form
               (cconfig, tform
               )
        VALUES ('conf_239_80011_suplemento_tf', 'BBDD'
               );

   INSERT INTO pds_supl_form
               (cconfig, tform
               )
        VALUES ('conf_281_80011_suplemento_tf', 'BBDD'
               );

   INSERT INTO pds_supl_form
               (cconfig, tform
               )
        VALUES ('conf_288_80011_suplemento_tf', 'BBDD'
               );

   INSERT INTO pds_supl_form
               (cconfig, tform
               )
        VALUES ('conf_611_80011_suplemento_tf', 'BBDD'
               );

   INSERT INTO pds_supl_form
               (cconfig, tform
               )
        VALUES ('conf_673_80011_suplemento_tf', 'BBDD'
               );

   INSERT INTO pds_supl_form
               (cconfig, tform
               )
        VALUES ('conf_677_80011_suplemento_tf', 'BBDD'
               );

   INSERT INTO pds_supl_form
               (cconfig, tform
               )
        VALUES ('conf_684_80011_suplemento_tf', 'BBDD'
               );

   INSERT INTO pds_supl_form
               (cconfig, tform
               )
        VALUES ('conf_696_80011_suplemento_tf', 'BBDD'
               );

   INSERT INTO pds_supl_form
               (cconfig, tform
               )
        VALUES ('conf_828_80011_suplemento_tf', 'BBDD'
               );

   INSERT INTO pds_supl_form
               (cconfig, tform
               )
        VALUES ('conf_915_80011_suplemento_tf', 'BBDD'
               );

   INSERT INTO pds_supl_form
               (cconfig, tform
               )
        VALUES ('conf_918_80011_suplemento_tf', 'BBDD'
               );

   INSERT INTO pds_supl_form
               (cconfig, tform
               )
        VALUES ('conf_141_80011_suplemento_tf', 'BBDD'
               );

   INSERT INTO pds_supl_form
               (cconfig, tform
               )
        VALUES ('conf_697_80011_suplemento_tf', 'BBDD'
               );

   INSERT INTO pds_supl_form
               (cconfig, tform
               )
        VALUES ('conf_685_80011_suplemento_tf', 'BBDD'
               );

   INSERT INTO pds_supl_form
               (cconfig, tform
               )
        VALUES ('conf_825_80011_suplemento_tf', 'BBDD'
               );

   INSERT INTO pds_supl_form
               (cconfig, tform
               )
        VALUES ('conf_237_80011_suplemento_tf', 'BBDD'
               );

   COMMIT;

   INSERT INTO pds_supl_validacio
               (cconfig, nselect,
                tselect
               )
        VALUES ('conf_918_80011_suplemento_tf', 2,
                'BEGIN
  SELECT COUNT(1)
    INTO :mi_cambio
    FROM ((SELECT g.finivig,g.ffinvig
              FROM garanseg g, seguros s
             WHERE g.ffinefe IS NULL
               AND g.sseguro = :pssegpol
               AND s.sseguro = g.sseguro
               AND NVL(f_pargaranpro_v(s.cramo,s.cmodali,s.ctipseg,s.ccolect,s.cactivi,g.cgarant,upper(''TIPO'')),0) NOT IN (3,4,5)
               AND g.nriesgo IN (SELECT r.nriesgo
                                   FROM riesgos r
                                  WHERE r.sseguro = :pssegpol
                                    AND r.fanulac IS NULL)
               AND g.nriesgo IN (SELECT er.nriesgo
                                   FROM estriesgos er
                                  WHERE er.sseguro = :psseguro
                                    AND er.fanulac IS NULL)
            MINUS
            SELECT g.finivig,g.ffinvig
              FROM estgaranseg g, estseguros s
             WHERE NVL(cobliga,1) = 1
               AND g.sseguro = :psseguro
               AND s.sseguro = g.sseguro
               AND NVL(f_pargaranpro_v(s.cramo,s.cmodali,s.ctipseg,s.ccolect,s.cactivi,g.cgarant,upper(''TIPO'')),0) NOT IN (3,4,5)
               AND g.nriesgo IN (SELECT r.nriesgo
                                   FROM riesgos r
                                  WHERE r.sseguro = :pssegpol
                                    AND r.fanulac IS NULL)
               AND g.nriesgo IN (SELECT er.nriesgo
                                   FROM estriesgos er
                                  WHERE er.sseguro = :psseguro
                                    AND er.fanulac IS NULL)) UNION
           (SELECT g.finivig,g.ffinvig
              FROM estgaranseg g, estseguros s
             WHERE NVL(g.cobliga,1) = 1
               AND g.sseguro = :psseguro
               AND s.sseguro = g.sseguro
               AND NVL(f_pargaranpro_v(s.cramo,s.cmodali,s.ctipseg,s.ccolect,s.cactivi,g.cgarant,upper(''TIPO'')),0) NOT IN (3,4,5)
               AND g.nriesgo IN (SELECT r.nriesgo
                                   FROM riesgos r
                                  WHERE r.sseguro = :pssegpol
                                    AND r.fanulac IS NULL)
               AND g.nriesgo IN (SELECT er.nriesgo
                                   FROM estriesgos er
                                  WHERE er.sseguro = :psseguro
                                    AND er.fanulac IS NULL)
            MINUS
            SELECT g.finivig,g.ffinvig
              FROM garanseg g, seguros s
             WHERE g.ffinefe IS NULL
               AND g.sseguro = :pssegpol
               AND s.sseguro = g.sseguro
               AND NVL(f_pargaranpro_v(s.cramo,s.cmodali,s.ctipseg,s.ccolect,s.cactivi,g.cgarant,upper(''TIPO'')),0) NOT IN (3,4,5)
               AND g.nriesgo IN (SELECT r.nriesgo
                                   FROM riesgos r
                                  WHERE r.sseguro = :pssegpol
                                    AND r.fanulac IS NULL)
               AND g.nriesgo IN (SELECT er.nriesgo
                                   FROM estriesgos er
                                  WHERE er.sseguro = :psseguro
                                    AND er.fanulac IS NULL)));
END;'
               );

   INSERT INTO pds_supl_validacio
               (cconfig, nselect,
                tselect
               )
        VALUES ('conf_237_80011_suplemento_tf', 1,
                'BEGIN
                       SELECT COUNT(1)
                         INTO :mi_cambio
                         FROM ((SELECT g.cgarant
                                  FROM estgaranseg g, estseguros s
                                 WHERE NVL(g.cobliga, 1) = 1
                                   AND g.sseguro = :psseguro
                                   AND s.sseguro = g.sseguro
                                   AND 1 NOT IN (SELECT cunica FROM estdetgaranseg WHERE sseguro = :psseguro AND cgarant = g.cgarant)
                                   AND NVL(f_pargaranpro_v(s.cramo, s.cmodali, s.ctipseg, s.ccolect, s.cactivi,
                                                           g.cgarant, UPPER(''TIPO'')),0) NOT IN(4, 5)
                                MINUS
                                SELECT g.cgarant
                                  FROM garanseg g, seguros s
                                 WHERE g.ffinefe IS NULL
                                   AND g.sseguro = :pssegpol
                                   AND s.sseguro = g.sseguro
                                   AND NVL(f_pargaranpro_v(s.cramo, s.cmodali, s.ctipseg, s.ccolect, s.cactivi,
                                                           g.cgarant, UPPER(''TIPO'')),0) NOT IN(4, 5))); END;'
               );

   INSERT INTO pds_supl_validacio
               (cconfig, nselect,
                tselect
               )
        VALUES ('conf_971_80011_suplemento_tf', 1,
                'BEGIN
          SELECT COUNT(1)   INTO :mi_cambio  from     (SELECT c.nendoso, c.ploccoa, cc.ccompan, cc.pcescoa FROM estseguros e,estcoacuadro c, estcoacedido cc WHERE e.sseguro = :psseguro  and e.sseguro = c.sseguro and e.sseguro = cc.sseguro
           minus    SELECT c.nendoso, c.ploccoa, cc.ccompan, cc.pcescoa FROM seguros e, coacuadro c, coacedido cc WHERE e.sseguro = :pssegpol and e.sseguro = c.sseguro and e.sseguro = cc.sseguro
           ); END;'
               );

   INSERT INTO pds_supl_validacio
               (cconfig, nselect,
                tselect
               )
        VALUES ('conf_685_80011_suplemento_tf', 2,
                'BEGIN
   SELECT COUNT(1)
     INTO :mi_cambio
     FROM (SELECT e.cpregun, e.crespue, e.trespue, e.nriesgo
             FROM estpregunseg e, estseguros s, pregunpro p
            WHERE e.sseguro = :psseguro
              AND e.nmovimi = :pnmovimi
              AND e.cpregun NOT IN(1, 4049)
              AND e.nriesgo IN(SELECT r.nriesgo
                                 FROM riesgos r
                                WHERE r.sseguro = :pssegpol
                                  AND r.fanulac IS NULL)
              AND s.sseguro = e.sseguro
              AND s.sproduc = p.sproduc
              AND e.cpregun = p.cpregun
              AND((p.cpretip <> 2)
                  OR(p.cpretip = 2
                     AND p.esccero = 1))
           MINUS
           SELECT e.cpregun, e.crespue, e.trespue, e.nriesgo
             FROM pregunseg e, seguros s, pregunpro p
            WHERE e.sseguro = :pssegpol
              AND e.cpregun NOT IN(1, 4049)
              AND e.nmovimi = (SELECT MAX(e1.nmovimi)
                                 FROM pregunseg e1
                                WHERE e1.sseguro = :pssegpol)
              AND e.nriesgo IN(SELECT r.nriesgo
                                 FROM estriesgos r
                                WHERE r.sseguro = :psseguro
                                  AND r.fanulac IS NULL)
              AND s.sseguro = e.sseguro
              AND s.sproduc = p.sproduc
              AND e.cpregun = p.cpregun
              AND((p.cpretip <> 2)
                  OR(p.cpretip = 2
                     AND p.esccero = 1))); END;'
               );

   INSERT INTO pds_supl_validacio
               (cconfig, nselect,
                tselect
               )
        VALUES ('conf_685_80011_suplemento_tf', 1,
                'BEGIN
   SELECT COUNT(1)
     INTO :mi_cambio
     FROM (SELECT e.cpregun, e.crespue, e.trespue, e.nriesgo
             FROM pregunseg e, seguros s, pregunpro p
            WHERE e.sseguro = :pssegpol
              AND e.cpregun NOT IN(1, 4049)
              AND e.nmovimi = (SELECT MAX(e1.nmovimi)
                                 FROM pregunseg e1
                                WHERE e1.sseguro = :pssegpol)
              AND e.nriesgo IN(SELECT r.nriesgo
                                 FROM estriesgos r
                                WHERE r.sseguro = :psseguro
                                  AND r.fanulac IS NULL)
              AND s.sseguro = e.sseguro
              AND s.sproduc = p.sproduc
              AND e.cpregun = p.cpregun
              AND((p.cpretip <> 2)
                  OR(p.cpretip = 2
                     AND p.esccero = 1))
           MINUS
           SELECT e.cpregun, e.crespue, e.trespue, e.nriesgo
             FROM estpregunseg e, estseguros s, pregunpro p
            WHERE e.sseguro = :psseguro
              AND e.nmovimi = :pnmovimi
              AND e.cpregun NOT IN(1, 4049)
              AND e.nriesgo IN(SELECT r.nriesgo
                                 FROM riesgos r
                                WHERE r.sseguro = :pssegpol
                                  AND r.fanulac IS NULL)
              AND s.sseguro = e.sseguro
              AND s.sproduc = p.sproduc
              AND e.cpregun = p.cpregun
              AND((p.cpretip <> 2)
                  OR(p.cpretip = 2
                     AND p.esccero = 1))); END;'
               );

   INSERT INTO pds_supl_validacio
               (cconfig, nselect,
                tselect
               )
        VALUES ('conf_281_80011_suplemento_tf', 4,
                'BEGIN
     SELECT COUNT(1)
     INTO :mi_cambio
     FROM (SELECT g.cpregun, g.crespue, g.nriesgo, g.cgarant
             FROM pregungaranseg g, seguros s
            WHERE g.sseguro = :pssegpol
              AND s.sseguro = g.sseguro
              AND NVL (f_pargaranpro_v (s.cramo, s.cmodali, s.ctipseg, s.ccolect, s.cactivi, g.cgarant, upper (''TIPO'')), 0) NOT IN (4, 5)
              AND g.cpregun <> 1002
              AND g.nmovimi = (SELECT MAX(p.nmovimi)
                               FROM pregunseg p
                              WHERE p.sseguro = :pssegpol)
              AND g.nriesgo IN(SELECT r.nriesgo
                               FROM riesgos r
                              WHERE r.sseguro = :pssegpol
                                AND r.fanulac IS NULL)
                                AND g.nriesgo IN(SELECT er.nriesgo
                               FROM estriesgos er
                              WHERE er.sseguro = :psseguro
                                AND er.fanulac IS NULL)
                 union ALL
                                SELECT g.cpregun, g.nvalor, g.nriesgo, g.cgarant
             FROM pregungaransegtab g, seguros s
            WHERE g.sseguro = :pssegpol
              AND s.sseguro = g.sseguro
              AND NVL (f_pargaranpro_v (s.cramo, s.cmodali, s.ctipseg, s.ccolect, s.cactivi, g.cgarant, upper (''TIPO'')), 0) NOT IN (4, 5)
              AND g.cpregun <> 1002
              AND g.nmovimi = (SELECT MAX(p.nmovimi)
                               FROM pregunseg p
                              WHERE p.sseguro = :pssegpol)
              AND g.nriesgo IN(SELECT r.nriesgo
                               FROM riesgos r
                              WHERE r.sseguro = :pssegpol
                                AND r.fanulac IS NULL)
                                AND g.nriesgo IN(SELECT er.nriesgo
                               FROM estriesgos er
                              WHERE er.sseguro = :psseguro
                                AND er.fanulac IS NULL)
           MINUS
           SELECT g.cpregun, g.crespue, g.nriesgo, g.cgarant
             FROM estpregungaranseg g, estseguros s
            WHERE g.sseguro = :psseguro
              AND g.nmovimi = :pnmovimi
              AND s.sseguro = g.sseguro
              AND NVL (f_pargaranpro_v (s.cramo, s.cmodali, s.ctipseg, s.ccolect, s.cactivi, g.cgarant, upper (''TIPO'')), 0) NOT IN (4, 5)
              AND g.cpregun <> 1002
              AND g.nriesgo IN(SELECT r.nriesgo
                               FROM riesgos r
                              WHERE r.sseguro = :pssegpol
                                AND r.fanulac IS NULL)
              AND g.nriesgo IN(SELECT er.nriesgo
                               FROM estriesgos er
                              WHERE ER.SSEGURO = :psseguro
                                AND er.fanulac IS NULL)
             union all

                        SELECT g.cpregun, g.nvalor, g.nriesgo, g.cgarant
             FROM estpregungaransegtab g, estseguros s
            WHERE g.sseguro = :psseguro
              AND g.nmovimi = :pnmovimi
              AND s.sseguro = g.sseguro
              AND NVL (f_pargaranpro_v (s.cramo, s.cmodali, s.ctipseg, s.ccolect, s.cactivi, g.cgarant, upper (''TIPO'')), 0) NOT IN (4, 5)
              AND g.cpregun <> 1002
              AND g.nriesgo IN(SELECT r.nriesgo
                               FROM riesgos r
                              WHERE r.sseguro = :pssegpol
                                AND r.fanulac IS NULL)
              AND g.nriesgo IN(SELECT er.nriesgo
                               FROM estriesgos er
                              WHERE ER.SSEGURO = :psseguro
                                AND ER.FANULAC IS NULL));
              END;'
               );

   INSERT INTO pds_supl_validacio
               (cconfig, nselect,
                tselect
               )
        VALUES ('conf_230_80011_suplemento_tf', 1,
                ' BEGIN SELECT COUNT (1) INTO :mi_cambio FROM (SELECT pac_persona.f_sperson_spereal(sperson), ffecfin FROM estassegurats WHERE sseguro = :psseguro MINUS SELECT sperson, ffecfin FROM asegurados WHERE sseguro = :pssegpol); END;'
               );

   INSERT INTO pds_supl_validacio
               (cconfig, nselect,
                tselect
               )
        VALUES ('conf_288_80011_suplemento_tf', 4,
                'BEGIN
                                     SELECT COUNT(1) INTO :mi_cambio
                                    FROM (SELECT SCLAGEN
                                    FROM CLAUSUSEG
                                    WHERE SSEGURO = :pssegpol
                                    MINUS
                                    SELECT SCLAGEN
                                    FROM ESTCLAUSUSEG
                                    WHERE SSEGURO = :psseguro); END;'
               );

   INSERT INTO pds_supl_validacio
               (cconfig, nselect,
                tselect
               )
        VALUES ('conf_288_80011_suplemento_tf', 1,
                'BEGIN
             SELECT COUNT(1) INTO :mi_cambio
             FROM (SELECT CCLAESP, TCLAESP
             FROM ESTCLAUSUESP
             WHERE CCLAESP = 2
             AND SSEGURO = :psseguro
             MINUS
             SELECT CCLAESP, TCLAESP
             FROM CLAUSUESP
             WHERE CCLAESP = 2
             AND SSEGURO = :pssegpol); END;'
               );

   INSERT INTO pds_supl_validacio
               (cconfig, nselect,
                tselect
               )
        VALUES ('conf_288_80011_suplemento_tf', 2,
                'BEGIN
             SELECT COUNT(1) INTO :mi_cambio
             FROM (SELECT CCLAESP, TCLAESP
             FROM CLAUSUESP
             WHERE CCLAESP = 2
             AND SSEGURO = :pssegpol
             MINUS
             SELECT CCLAESP, TCLAESP
             FROM ESTCLAUSUESP
             WHERE CCLAESP = 2
             AND SSEGURO = :psseguro); END;'
               );

   INSERT INTO pds_supl_validacio
               (cconfig, nselect,
                tselect
               )
        VALUES ('conf_288_80011_suplemento_tf', 3,
                'BEGIN
                                     SELECT COUNT(1) INTO :mi_cambio
                                    FROM (SELECT SCLAGEN
                                    FROM ESTCLAUSUSEG
                                    WHERE SSEGURO = :psseguro
                                    MINUS
                                    SELECT SCLAGEN
                                    FROM CLAUSUSEG
                                    WHERE SSEGURO = :pssegpol); END;'
               );

   INSERT INTO pds_supl_validacio
               (cconfig, nselect,
                tselect
               )
        VALUES ('conf_239_80011_suplemento_tf', 1,
                'BEGIN
   SELECT COUNT(1)
     INTO :mi_cambio
     FROM ((SELECT g.cgarant
              FROM garanseg g, seguros s
             WHERE g.ffinefe IS NULL
               AND g.sseguro = :pssegpol
               AND s.sseguro = g.sseguro
               AND NVL(f_pargaranpro_v(s.cramo, s.cmodali, s.ctipseg, s.ccolect, s.cactivi,
                                       g.cgarant, UPPER(''TIPO'')),0) NOT IN(4, 5)
            MINUS
            SELECT g.cgarant
              FROM estgaranseg g, estseguros s
             WHERE NVL(g.cobliga, 1) = 1
               AND g.sseguro = :psseguro
               AND s.sseguro = g.sseguro
               AND 1 NOT IN (SELECT cunica FROM estdetgaranseg WHERE sseguro = :psseguro AND cgarant = g.cgarant)
               AND NVL(f_pargaranpro_v(s.cramo, s.cmodali, s.ctipseg, s.ccolect, s.cactivi,
                                       g.cgarant, UPPER(''TIPO'')),0) NOT IN(4, 5))); END;'
               );

   INSERT INTO pds_supl_validacio
               (cconfig, nselect,
                tselect
               )
        VALUES ('conf_281_80011_suplemento_tf', 1,
                'BEGIN
   SELECT COUNT (1)
     INTO :mi_cambio
     FROM ((SELECT g.icapital, g.cgarant
              FROM garanseg g, seguros s
             WHERE g.ffinefe IS NULL
               AND g.sseguro = :pssegpol
               AND s.sseguro = g.sseguro
               AND NVL (f_pargaranpro_v (s.cramo, s.cmodali, s.ctipseg, s.ccolect, s.cactivi, g.cgarant, upper (''TIPO'')), 0) NOT IN (4, 5,9)
            MINUS
            SELECT g.icapital, g.cgarant
              FROM estgaranseg g, estseguros s
             WHERE NVL (g.cobliga, 1) = 1
               AND g.sseguro = :psseguro
               AND s.sseguro = g.sseguro
               AND NVL (f_pargaranpro_v (s.cramo, s.cmodali, s.ctipseg, s.ccolect, s.cactivi, g.cgarant, upper (''TIPO'')), 0) NOT IN (4, 5,9))
           UNION
           (SELECT g.icapital, g.cgarant
              FROM estgaranseg g, estseguros s
             WHERE NVL (g.cobliga, 1) = 1
               AND g.sseguro = :psseguro
               AND s.sseguro = g.sseguro
               AND NVL (f_pargaranpro_v (s.cramo, s.cmodali, s.ctipseg, s.ccolect, s.cactivi, g.cgarant, upper (''TIPO'')), 0) NOT IN (4, 5,9)
            MINUS
            SELECT g.icapital, g.cgarant
              FROM garanseg g, seguros s
             WHERE g.ffinefe IS NULL
               AND g.sseguro = :pssegpol
               AND s.sseguro = g.sseguro
               AND NVL (f_pargaranpro_v (s.cramo, s.cmodali, s.ctipseg, s.ccolect, s.cactivi, g.cgarant, upper (''TIPO'')), 0) NOT IN (4, 5,9))); END;'
               );

   INSERT INTO pds_supl_validacio
               (cconfig, nselect,
                tselect
               )
        VALUES ('conf_281_80011_suplemento_tf', 3,
                'BEGIN
   SELECT COUNT(1)
     INTO :mi_cambio
     FROM (SELECT g.cpregun, g.crespue, g.nriesgo, g.cgarant
             FROM pregungaranseg g, seguros s
            WHERE g.sseguro = :pssegpol
              AND s.sseguro = g.sseguro
              AND NVL (f_pargaranpro_v (s.cramo, s.cmodali, s.ctipseg, s.ccolect, s.cactivi, g.cgarant, upper (''TIPO'')), 0) NOT IN (4, 5)
              AND g.cpregun <> 1002
              AND g.nmovimi = (SELECT MAX(p.nmovimi)
                               FROM pregunseg p
                              WHERE p.sseguro = :pssegpol)
              AND g.nriesgo IN(SELECT r.nriesgo
                               FROM riesgos r
                              WHERE r.sseguro = :pssegpol
                                AND r.fanulac IS NULL)
              AND g.nriesgo IN(SELECT er.nriesgo
                               FROM estriesgos er
                              WHERE er.sseguro = :psseguro
                                AND er.fanulac IS NULL)
           MINUS
           SELECT g.cpregun, g.crespue, g.nriesgo, g.cgarant
             FROM estpregungaranseg g, estseguros s
            WHERE g.sseguro = :psseguro
              AND g.nmovimi = :pnmovimi
              AND s.sseguro = g.sseguro
              AND NVL (f_pargaranpro_v (s.cramo, s.cmodali, s.ctipseg, s.ccolect, s.cactivi, g.cgarant, upper (''TIPO'')), 0) NOT IN (4, 5)
              AND g.cpregun <> 1002
              AND g.nriesgo IN(SELECT r.nriesgo
                               FROM riesgos r
                              WHERE r.sseguro = :pssegpol
                                AND r.fanulac IS NULL)
              AND g.nriesgo IN(SELECT er.nriesgo
                               FROM estriesgos er
                              WHERE er.sseguro = :psseguro
                                AND er.fanulac IS NULL)); END;'
               );

   INSERT INTO pds_supl_validacio
               (cconfig, nselect,
                tselect
               )
        VALUES ('conf_209_80011_suplemento_tf', 1,
                ' BEGIN SELECT COUNT(1) INTO :mi_cambio FROM (SELECT tnatrie||dbms_lob.substr( tdescrie) FROM riesgos WHERE sseguro = :pssegpol AND nriesgo = (SELECT max(nriesgo) FROM estriesgos WHERE sseguro = :psseguro) MINUS SELECT tnatrie||dbms_lob.substr( tdescrie)  FROM estriesgos WHERE sseguro = :psseguro);END;'
               );

   INSERT INTO pds_supl_validacio
               (cconfig, nselect,
                tselect
               )
        VALUES ('conf_209_80011_suplemento_tf', 2,
                ' BEGIN SELECT COUNT(1) INTO :mi_cambio FROM (SELECT tnatrie||dbms_lob.substr( tdescrie)  FROM estriesgos WHERE sseguro = :psseguro MINUS SELECT tnatrie||dbms_lob.substr( tdescrie )  FROM riesgos WHERE sseguro = :pssegpol AND nriesgo = (SELECT max(nriesgo) FROM estriesgos WHERE sseguro = :psseguro) );END;'
               );

   INSERT INTO pds_supl_validacio
               (cconfig, nselect,
                tselect
               )
        VALUES ('conf_141_80011_suplemento_tf', 1,
                'BEGIN
   SELECT COUNT(1)
   INTO :mi_cambio
   FROM (SELECT m.sseguro, m.cmotmov, m.nmovimi
           FROM seguros s, movseguro m, suspensionseg ss
          WHERE s.sseguro = :pssegpol
            AND s.sseguro = m.sseguro
            AND m.nmovimi = (SELECT MAX(m1.nmovimi)
                               FROM movseguro m1
                              WHERE m1.sseguro = m.sseguro
                                AND m1.cmotmov = 391)
            AND m.cmotmov = 391
            AND s.csituac NOT IN (2, 3)
            AND s.sseguro = ss.sseguro
            AND ss.ffinal IS NULL
         MINUS
         SELECT m.sseguro, m.cmotmov, m.nmovimi
           FROM estseguros s, estdetmovseguro m, estsuspensionseg ss
          WHERE s.sseguro = :psseguro
            AND s.sseguro = m.sseguro
            AND m.nmovimi = (SELECT MAX(m1.nmovimi)
                               FROM movseguro m1
                              WHERE m1.sseguro = m.sseguro
                                AND m1.cmotmov = 141)
            AND m.cmotmov = 141
            AND s.csituac NOT IN (2, 3)
            AND s.sseguro = ss.sseguro
            AND ss.ffinal IS NOT NULL); END;'
               );

   INSERT INTO pds_supl_validacio
               (cconfig, nselect,
                tselect
               )
        VALUES ('conf_141_80011_suplemento_tf', 2,
                'BEGIN
    SELECT COUNT(1)
    INTO :mi_cambio
    FROM (SELECT m.sseguro, m.cmotmov, m.nmovimi
             FROM estseguros s, estdetmovseguro m, estsuspensionseg ss
            WHERE s.sseguro = :psseguro
              AND s.sseguro = m.sseguro
              AND m.nmovimi = (SELECT MAX(m1.nmovimi)
                                 FROM movseguro m1
                                WHERE m1.sseguro = m.sseguro
                                  AND m1.cmotmov = 141)
              AND m.cmotmov = 141
              AND s.csituac NOT IN (2, 3) -- que no estan anuladas ni vencidas
              AND s.sseguro = ss.sseguro
              AND ss.ffinal IS NOT NULL
           MINUS
           SELECT m.sseguro, m.cmotmov, m.nmovimi
             FROM seguros s, movseguro m, suspensionseg ss
            WHERE s.sseguro = :pssegpol
              AND s.sseguro = m.sseguro
              AND m.nmovimi = (SELECT MAX(m1.nmovimi)
                                 FROM movseguro m1
                                WHERE m1.sseguro = m.sseguro
                                  AND m1.cmotmov = 391)
              AND m.cmotmov = 391
              AND s.csituac NOT IN (2, 3) -- que no estan anuladas ni vencidas
              AND s.sseguro = ss.sseguro
              AND ss.ffinal IS NULL); END;'
               );

   INSERT INTO pds_supl_validacio
               (cconfig, nselect,
                tselect
               )
        VALUES ('conf_611_80011_suplemento_tf', 1,
                'BEGIN SELECT COUNT(1) INTO :mi_cambio FROM (SELECT sperson FROM gescobros WHERE sseguro = :pssegpol MINUS SELECT pac_persona.f_sperson_spereal(sperson) FROM estgescobros WHERE sseguro = :psseguro ); END;'
               );

   INSERT INTO pds_supl_validacio
               (cconfig, nselect,
                tselect
               )
        VALUES ('conf_611_80011_suplemento_tf', 2,
                'BEGIN SELECT COUNT(1) INTO :mi_cambio FROM (SELECT pac_persona.f_sperson_spereal(sperson) FROM estgescobros  WHERE sseguro = :psseguro MINUS SELECT sperson FROM  gescobros  WHERE sseguro = :pssegpol ); END;'
               );

   INSERT INTO pds_supl_validacio
               (cconfig, nselect,
                tselect
               )
        VALUES ('conf_673_80011_suplemento_tf', 1,
                'BEGIN
   SELECT COUNT(1)
     INTO :mi_cambio
     FROM (SELECT b.sperson, c.cdomici, c.tnomvia, c.nnumvia, c.tcomple, c.tdomici, c.cpostal,
                  c.cpoblac, c.cprovin
             FROM estseguros a, esttomadores b, estper_direcciones c
            WHERE a.sseguro = :psseguro
              AND b.sseguro = a.sseguro
              AND b.cdomici not IN(SELECT cdomici
                                 FROM tomadores
                                WHERE sseguro = :pssegpol)
              AND c.sperson = b.sperson
              AND a.ncertif = 0
              MINUS
              SELECT b.sperson, c.cdomici, c.tnomvia, c.nnumvia, c.tcomple, c.tdomici, c.cpostal,
                  c.cpoblac, c.cprovin
             FROM seguros a, tomadores b, per_direcciones c
            WHERE a.sseguro = :pssegpol
              AND b.sseguro = a.sseguro
              AND b.cdomici not IN(SELECT cdomici
                                 FROM esttomadores
                                WHERE sseguro = :psseguro)
              AND c.sperson = b.sperson
              AND a.ncertif = 0
              ); END; '
               );

   INSERT INTO pds_supl_validacio
               (cconfig, nselect,
                tselect
               )
        VALUES ('conf_684_80011_suplemento_tf', 1,
                ' BEGIN
               SELECT COUNT(1)
                 INTO :mi_cambio
                 FROM (SELECT cpregun, crespue, trespue
                         FROM pregunpolseg
                        WHERE sseguro = :pssegpol
                          AND nmovimi = (SELECT MAX(nmovimi)
                                           FROM pregunpolseg
                                          WHERE sseguro = :pssegpol)
                       MINUS
                       SELECT cpregun, crespue, trespue
                         FROM estpregunpolseg
                        WHERE sseguro = :psseguro
                          AND nmovimi = :pnmovimi); END; '
               );

   INSERT INTO pds_supl_validacio
               (cconfig, nselect,
                tselect
               )
        VALUES ('conf_684_80011_suplemento_tf', 2,
                ' BEGIN
               SELECT COUNT(1)
                 INTO :mi_cambio
                 FROM (SELECT cpregun, crespue, trespue
                         FROM estpregunpolseg
                        WHERE sseguro = :psseguro
                          AND nmovimi = :pnmovimi
                       MINUS
                       SELECT cpregun, crespue, trespue
                         FROM pregunpolseg
                        WHERE sseguro = :pssegpol
                          AND nmovimi = (SELECT MAX(nmovimi)
                                           FROM pregunpolseg
                                          WHERE sseguro = :pssegpol)); END; '
               );

   INSERT INTO pds_supl_validacio
               (cconfig, nselect,
                tselect
               )
        VALUES ('conf_696_80011_suplemento_tf', 1,
                'BEGIN
   SELECT COUNT(1)
     INTO :mi_cambio
     FROM (SELECT sperson, cagrupa
             FROM tomadores t
            WHERE sseguro = :pssegpol
           MINUS
           SELECT spereal, cagrupa
             FROM esttomadores t,estper_personas e
            WHERE  t.sseguro = :psseguro
                AND t.sperson = e.sperson); END;'
               );

   INSERT INTO pds_supl_validacio
               (cconfig, nselect,
                tselect
               )
        VALUES ('conf_828_80011_suplemento_tf', 1,
                ' BEGIN SELECT COUNT(1) INTO :mi_cambio FROM (SELECT ctipcom FROM seguros WHERE sseguro = :pssegpol MINUS SELECT ctipcom FROM estseguros WHERE sseguro = :psseguro ); END;'
               );

   INSERT INTO pds_supl_validacio
               (cconfig, nselect,
                tselect
               )
        VALUES ('conf_828_80011_suplemento_tf', 2,
                'BEGIN SELECT COUNT(1) INTO :mi_cambio FROM (SELECT cmodcom,pcomisi,ninialt,nfinalt FROM ESTCOMISIONSEGU WHERE sseguro = :psseguro MINUS SELECT cmodcom,pcomisi,ninialt,nfinalt FROM COMISIONSEGU WHERE sseguro = :pssegpol); END;'
               );

   INSERT INTO pds_supl_validacio
               (cconfig, nselect,
                tselect
               )
        VALUES ('conf_239_80011_suplemento_tf', 3,
                'BEGIN
   SELECT COUNT(1)
     INTO :mi_cambio
     FROM (SELECT g.cpregun, g.crespue, g.trespue, g.nriesgo
             FROM pregunprogaran ppg,estpregungaranseg g, estseguros s, estgaranseg e
            WHERE g.sseguro = :psseguro
              AND g.nmovimi = :pnmovimi
              AND s.sseguro = g.sseguro
              AND s.sseguro = e.sseguro
              AND g.sseguro = e.sseguro
              AND g.nmovimi = e.nmovimi
              AND g.nriesgo = e.nriesgo
              AND g.cgarant = e.cgarant
              AND  ppg.SPRODUC = s.sproduc
              AND ppg.CACTIVI = s.cactivi
              AND ppg.CGARANT = g.cgarant
              AND ppg.CPREGUN  = g.cpregun
              AND ppg.CPRETIP IN (1,3)
              AND e.cobliga = 1
              AND NVL (f_pargaranpro_v (s.cramo, s.cmodali, s.ctipseg, s.ccolect, s.cactivi, g.cgarant, upper (''TIPO'')), 0) NOT IN (3, 4, 5)
              AND g.cpregun <> 1002
              AND g.nriesgo IN(SELECT r.nriesgo
                               FROM riesgos r
                              WHERE r.sseguro = :pssegpol
                                AND r.fanulac IS NULL)
              AND g.nriesgo IN(SELECT er.nriesgo
                               FROM estriesgos er
                              WHERE er.sseguro = :psseguro
                                AND er.fanulac IS NULL)
           MINUS
           SELECT g.cpregun, g.crespue, g.trespue, g.nriesgo
             FROM pregunprogaran ppg,pregungaranseg g, seguros s
            WHERE g.sseguro = :pssegpol
              AND s.sseguro = g.sseguro
              AND NVL (f_pargaranpro_v (s.cramo, s.cmodali, s.ctipseg, s.ccolect, s.cactivi, g.cgarant, upper (''TIPO'')), 0) NOT IN (3, 4, 5)
              AND g.cpregun <> 1002
              AND  ppg.SPRODUC = s.sproduc
              AND ppg.CACTIVI = s.cactivi
              AND ppg.CGARANT = g.cgarant
              AND ppg.CPREGUN  = g.cpregun
              AND ppg.CPRETIP IN (1,3)
              AND g.nmovimi = (SELECT MAX(p.nmovimi)
                               FROM pregunseg p
                              WHERE p.sseguro = :pssegpol)
              AND g.nriesgo IN(SELECT r.nriesgo
                               FROM riesgos r
                              WHERE r.sseguro = :pssegpol
                                AND r.fanulac IS NULL)
              AND g.nriesgo IN(SELECT er.nriesgo
                               FROM estriesgos er
                              WHERE er.sseguro = :psseguro
                                AND er.fanulac IS NULL)); END;'
               );

   INSERT INTO pds_supl_validacio
               (cconfig, nselect,
                tselect
               )
        VALUES ('conf_239_80011_suplemento_tf', 2,
                'BEGIN
   SELECT COUNT(1)
     INTO :mi_cambio
     FROM (SELECT g.cpregun, g.crespue, g.trespue, g.nriesgo
             FROM pregunprogaran ppg,pregungaranseg g, seguros s
            WHERE g.sseguro = :pssegpol
              AND s.sseguro = g.sseguro
              AND NVL (f_pargaranpro_v (s.cramo, s.cmodali, s.ctipseg, s.ccolect, s.cactivi, g.cgarant, upper (''TIPO'')), 0) NOT IN (3, 4, 5)
              AND g.cpregun <> 1002
              AND  ppg.SPRODUC = s.sproduc
              AND ppg.CACTIVI = s.cactivi
              AND ppg.CGARANT = g.cgarant
              AND ppg.CPREGUN  = g.cpregun
              AND ppg.CPRETIP IN (1,3)
              AND g.nmovimi = (SELECT MAX(p.nmovimi)
                               FROM pregunseg p
                              WHERE p.sseguro = :pssegpol)
              AND g.nriesgo IN(SELECT r.nriesgo
                               FROM riesgos r
                              WHERE r.sseguro = :pssegpol
                                AND r.fanulac IS NULL)
              AND g.nriesgo IN(SELECT er.nriesgo
                               FROM estriesgos er
                              WHERE er.sseguro = :psseguro
                                AND er.fanulac IS NULL)
           MINUS
           SELECT g.cpregun, g.crespue, g.trespue, g.nriesgo
             FROM pregunprogaran ppg,estpregungaranseg g, estseguros s, estgaranseg e
            WHERE g.sseguro = :psseguro
              AND g.nmovimi = :pnmovimi
              AND s.sseguro = g.sseguro
              AND s.sseguro = e.sseguro
              AND g.sseguro = e.sseguro
               AND  ppg.SPRODUC = s.sproduc
              AND ppg.CACTIVI = s.cactivi
              AND ppg.CGARANT = g.cgarant
              AND ppg.CPREGUN  = g.cpregun
              AND ppg.CPRETIP IN (1,3)
              AND g.nmovimi = e.nmovimi
              AND g.nriesgo = e.nriesgo
              AND g.cgarant = e.cgarant
              AND e.cobliga = 1
              AND NVL (f_pargaranpro_v (s.cramo, s.cmodali, s.ctipseg, s.ccolect, s.cactivi, g.cgarant, upper (''TIPO'')), 0) NOT IN (3, 4, 5)
              AND g.cpregun <> 1002
              AND g.nriesgo IN(SELECT r.nriesgo
                               FROM riesgos r
                              WHERE r.sseguro = :pssegpol
                                AND r.fanulac IS NULL)
              AND g.nriesgo IN(SELECT er.nriesgo
                               FROM estriesgos er
                              WHERE er.sseguro = :psseguro
                                AND er.fanulac IS NULL)); END;'
               );

   INSERT INTO pds_supl_validacio
               (cconfig, nselect,
                tselect
               )
        VALUES ('conf_281_80011_suplemento_tf', 2,
                'BEGIN
   SELECT COUNT(1)
     INTO :mi_cambio
     FROM (SELECT g.cpregun, g.crespue, g.nriesgo, g.cgarant
             FROM estpregungaranseg g, estseguros s
            WHERE g.sseguro = :psseguro
              AND g.nmovimi = :pnmovimi
              AND s.sseguro = g.sseguro
              AND NVL (f_pargaranpro_v (s.cramo, s.cmodali, s.ctipseg, s.ccolect, s.cactivi, g.cgarant, upper (''TIPO'')), 0) NOT IN (4, 5)
              AND g.cpregun <> 1002
              AND g.nriesgo IN(SELECT r.nriesgo
                               FROM riesgos r
                              WHERE r.sseguro = :pssegpol
                                AND r.fanulac IS NULL)
              AND g.nriesgo IN(SELECT er.nriesgo
                               FROM estriesgos er
                              WHERE er.sseguro = :psseguro
                                AND er.fanulac IS NULL)
           MINUS
           SELECT g.cpregun, g.crespue, g.nriesgo, g.cgarant
             FROM pregungaranseg g, seguros s
            WHERE g.sseguro = :pssegpol
              AND s.sseguro = g.sseguro
              AND NVL (f_pargaranpro_v (s.cramo, s.cmodali, s.ctipseg, s.ccolect, s.cactivi, g.cgarant, upper (''TIPO'')), 0) NOT IN (4, 5)
              AND g.cpregun <> 1002
              AND g.nmovimi = (SELECT MAX(p.nmovimi)
                               FROM pregunseg p
                              WHERE p.sseguro = :pssegpol)
              AND g.nriesgo IN(SELECT r.nriesgo
                               FROM riesgos r
                              WHERE r.sseguro = :pssegpol
                                AND r.fanulac IS NULL)
              AND g.nriesgo IN(SELECT er.nriesgo
                               FROM estriesgos er
                              WHERE er.sseguro = :psseguro
                                AND er.fanulac IS NULL)); END;'
               );

   INSERT INTO pds_supl_validacio
               (cconfig, nselect,
                tselect
               )
        VALUES ('conf_677_80011_suplemento_tf', 1,
                'BEGIN SELECT COUNT(1) INTO :mi_cambio
                            FROM (SELECT c.cdomici, c.tnomvia, c.nnumvia, c.tcomple, c.tdomici, c.cpostal,c.cpoblac, c.cprovin
                                  FROM estseguros a, estassegurats b, estper_direcciones c, estper_personas p
                                  WHERE a.sseguro = :psseguro AND b.sseguro = a.sseguro
                                  AND b.cdomici = c.cdomici AND b.sperson = c.sperson and p.sperson = b.sperson
                           AND EXISTS (select 1 from asegurados where sseguro = a.ssegpol and sperson = p.spereal)
                                  MINUS
                                  SELECT c.cdomici, c.tnomvia, c.nnumvia, c.tcomple, c.tdomici, c.cpostal,c.cpoblac, c.cprovin
                                  FROM seguros a, asegurados b, per_direcciones c
                                  WHERE a.sseguro = :pssegpol AND b.sseguro = a.sseguro
                                  AND b.cdomici = c.cdomici AND b.sperson = c.sperson ); END;'
               );

   INSERT INTO pds_supl_validacio
               (cconfig, nselect,
                tselect
               )
        VALUES ('conf_825_80011_suplemento_tf', 1,
                'BEGIN
   SELECT COUNT (1)
     INTO :mi_cambio
     FROM ((SELECT c.cagente, c.ppartici, c.pcomisi, c.islider
              FROM age_corretaje c
             WHERE c.sseguro = :pssegpol
               AND c.nmovimi = (SELECT MAX(c1.nmovimi)
                                FROM age_corretaje c1
                               WHERE c1.sseguro = c.sseguro)
            MINUS
            SELECT c.cagente, c.ppartici, c.pcomisi, c.islider
              FROM estage_corretaje c
             WHERE c.sseguro = :psseguro
               AND c.nmovimi = :pnmovimi)
           UNION
           (SELECT c.cagente, c.ppartici, c.pcomisi, c.islider
              FROM estage_corretaje c
             WHERE c.sseguro = :psseguro
               AND c.nmovimi = :pnmovimi
            MINUS
            SELECT c.cagente, c.ppartici, c.pcomisi, c.islider
              FROM age_corretaje c
             WHERE c.sseguro = :pssegpol
               AND c.nmovimi = (SELECT MAX(c1.nmovimi)
                                FROM age_corretaje c1
                               WHERE c1.sseguro = c.sseguro))); END;'
               );

   INSERT INTO pds_supl_validacio
               (cconfig, nselect,
                tselect
               )
        VALUES ('conf_697_80011_suplemento_tf', 1,
                'BEGIN
                       SELECT COUNT(1)
                         INTO :mi_cambio
                         FROM (SELECT CGARANT, NVL(pac_persona.f_sperson_spereal(sperson), sperson), NVL(NVL(pac_persona.f_sperson_spereal(SPERSON_TIT), SPERSON_TIT), 0), CTIPBEN, CPAREN, PPARTICIP
                                 FROM estbenespseg e
                                WHERE sseguro = :psseguro
                               MINUS
                               SELECT CGARANT, SPERSON, SPERSON_TIT, CTIPBEN, CPAREN, PPARTICIP
                                 FROM benespseg
                                WHERE  sseguro = :pssegpol
                                UNION
                                (SELECT CGARANT, SPERSON, SPERSON_TIT, CTIPBEN, CPAREN, PPARTICIP
                                 FROM benespseg
                                WHERE  sseguro = :pssegpol
                                MINUS
                                SELECT CGARANT, NVL(pac_persona.f_sperson_spereal(sperson), sperson), NVL(NVL(pac_persona.f_sperson_spereal(SPERSON_TIT), SPERSON_TIT), 0), CTIPBEN, CPAREN, PPARTICIP
                                 FROM estbenespseg e
                                WHERE sseguro = :psseguro)); END; '
               );

   INSERT INTO pds_supl_validacio
               (cconfig, nselect,
                tselect
               )
        VALUES ('conf_915_80011_suplemento_tf', 1,
                'BEGIN
   SELECT COUNT(1)
    INTO :mi_cambio
     FROM ((SELECT g.icapital, g.cgarant, g.nriesgo
              FROM garanseg g, seguros s
             WHERE g.ffinefe IS NULL
               AND g.sseguro = :pssegpol
               AND s.sseguro = g.sseguro
               AND NVL (f_pargaranpro_v (s.cramo, s.cmodali, s.ctipseg, s.ccolect, s.cactivi, g.cgarant, upper (''TIPO'')), 0) NOT IN (3, 4, 5)
               AND g.nriesgo IN(SELECT r.nriesgo
                                     FROM riesgos r
                                    WHERE r.sseguro = :pssegpol
                                      AND r.fanulac IS NULL)
               AND g.nriesgo IN(SELECT er.nriesgo
                                     FROM estriesgos er
                                    WHERE er.sseguro = :psseguro
                                      AND er.fanulac IS NULL)
            MINUS
            SELECT g.icapital, g.cgarant, g.nriesgo
              FROM estgaranseg g, estseguros s
             WHERE NVL(cobliga, 1) = 1
               AND g.sseguro = :psseguro
               AND s.sseguro = g.sseguro
               AND NVL (f_pargaranpro_v (s.cramo, s.cmodali, s.ctipseg, s.ccolect, s.cactivi, g.cgarant, upper (''TIPO'')), 0) NOT IN (3, 4, 5)
               AND g.nriesgo IN(SELECT r.nriesgo
                                     FROM riesgos r
                                    WHERE r.sseguro = :pssegpol
                                      AND r.fanulac IS NULL)
               AND g.nriesgo IN(SELECT er.nriesgo
                                     FROM estriesgos er
                                    WHERE er.sseguro = :psseguro
                                      AND er.fanulac IS NULL))
           UNION
           (SELECT g.icapital, g.cgarant, g.nriesgo
              FROM estgaranseg g, estseguros s
             WHERE NVL(g.cobliga, 1) = 1
               AND g.sseguro = :psseguro
               AND s.sseguro = g.sseguro
               AND NVL (f_pargaranpro_v (s.cramo, s.cmodali, s.ctipseg, s.ccolect, s.cactivi, g.cgarant, upper (''TIPO'')), 0) NOT IN (3, 4, 5)
               AND g.nriesgo IN(SELECT r.nriesgo
                                     FROM riesgos r
                                    WHERE r.sseguro = :pssegpol
                                      AND r.fanulac IS NULL)
               AND g.nriesgo IN(SELECT er.nriesgo
                                     FROM estriesgos er
                                    WHERE er.sseguro = :psseguro
                                      AND er.fanulac IS NULL)
            MINUS
            SELECT g.icapital, g.cgarant, g.nriesgo
              FROM garanseg g, seguros s
             WHERE g.ffinefe IS NULL
               AND g.sseguro = :pssegpol
               AND s.sseguro = g.sseguro
               AND NVL (f_pargaranpro_v (s.cramo, s.cmodali, s.ctipseg, s.ccolect, s.cactivi, g.cgarant, upper (''TIPO'')), 0) NOT IN (3, 4, 5)
               AND g.nriesgo IN(SELECT r.nriesgo
                                     FROM riesgos r
                                    WHERE r.sseguro = :pssegpol
                                      AND r.fanulac IS NULL)
               AND g.nriesgo IN(SELECT er.nriesgo
                                     FROM estriesgos er
                                    WHERE er.sseguro = :psseguro
                                      AND er.fanulac IS NULL))); END;'
               );

   INSERT INTO pds_supl_validacio
               (cconfig, nselect,
                tselect
               )
        VALUES ('conf_915_80011_suplemento_tf', 2,
                'BEGIN
   SELECT COUNT(1)
    INTO :mi_cambio
     FROM ((SELECT g.ffinvig, g.cgarant, g.nriesgo
              FROM garanseg g, seguros s
             WHERE g.ffinefe IS NULL
               AND g.sseguro = :pssegpol
               AND s.sseguro = g.sseguro
               AND NVL (f_pargaranpro_v (s.cramo, s.cmodali, s.ctipseg, s.ccolect, s.cactivi, g.cgarant, upper (''TIPO'')), 0) NOT IN (3, 4, 5)
               AND g.nriesgo IN(SELECT r.nriesgo
                                     FROM riesgos r
                                    WHERE r.sseguro = :pssegpol
                                      AND r.fanulac IS NULL)
               AND g.nriesgo IN(SELECT er.nriesgo
                                     FROM estriesgos er
                                    WHERE er.sseguro = :psseguro
                                      AND er.fanulac IS NULL)
            MINUS
            SELECT g.ffinvig, g.cgarant, g.nriesgo
              FROM estgaranseg g, estseguros s
             WHERE NVL(cobliga, 1) = 1
               AND g.sseguro = :psseguro
               AND s.sseguro = g.sseguro
               AND NVL (f_pargaranpro_v (s.cramo, s.cmodali, s.ctipseg, s.ccolect, s.cactivi, g.cgarant, upper (''TIPO'')), 0) NOT IN (3, 4, 5)
               AND g.nriesgo IN(SELECT r.nriesgo
                                     FROM riesgos r
                                    WHERE r.sseguro = :pssegpol
                                      AND r.fanulac IS NULL)
               AND g.nriesgo IN(SELECT er.nriesgo
                                     FROM estriesgos er
                                    WHERE er.sseguro = :psseguro
                                      AND er.fanulac IS NULL))
           UNION
           (SELECT g.ffinvig, g.cgarant, g.nriesgo
              FROM estgaranseg g, estseguros s
             WHERE NVL(g.cobliga, 1) = 1
               AND g.sseguro = :psseguro
               AND s.sseguro = g.sseguro
               AND NVL (f_pargaranpro_v (s.cramo, s.cmodali, s.ctipseg, s.ccolect, s.cactivi, g.cgarant, upper (''TIPO'')), 0) NOT IN (3, 4, 5)
               AND g.nriesgo IN(SELECT r.nriesgo
                                     FROM riesgos r
                                    WHERE r.sseguro = :pssegpol
                                      AND r.fanulac IS NULL)
               AND g.nriesgo IN(SELECT er.nriesgo
                                     FROM estriesgos er
                                    WHERE er.sseguro = :psseguro
                                      AND er.fanulac IS NULL)
            MINUS
            SELECT g.ffinvig, g.cgarant, g.nriesgo
              FROM garanseg g, seguros s
             WHERE g.ffinefe IS NULL
               AND g.sseguro = :pssegpol
               AND s.sseguro = g.sseguro
               AND NVL (f_pargaranpro_v (s.cramo, s.cmodali, s.ctipseg, s.ccolect, s.cactivi, g.cgarant, upper (''TIPO'')), 0) NOT IN (3, 4, 5)
               AND g.nriesgo IN(SELECT r.nriesgo
                                     FROM riesgos r
                                    WHERE r.sseguro = :pssegpol
                                      AND r.fanulac IS NULL)
               AND g.nriesgo IN(SELECT er.nriesgo
                                     FROM estriesgos er
                                    WHERE er.sseguro = :psseguro
                                      AND er.fanulac IS NULL))); END;'
               );

   INSERT INTO pds_supl_validacio
               (cconfig, nselect,
                tselect
               )
        VALUES ('conf_918_80011_suplemento_tf', 1,
                'BEGIN
   SELECT COUNT(1)
    INTO :mi_cambio
     FROM ((SELECT fefecto, fefeplazo
              FROM seguros s
             WHERE sseguro = :pssegpol
            MINUS
            SELECT fefecto, fefeplazo
              FROM estseguros s
             WHERE sseguro = :psseguro)
           UNION
           (SELECT fefecto, fefeplazo
              FROM estseguros s
             WHERE sseguro = :psseguro
            MINUS
            SELECT fefecto, fefeplazo
              FROM seguros s
             WHERE sseguro = :pssegpol)); END;'
               );

   INSERT INTO pds_supl_validacio
               (cconfig, nselect,
                tselect
               )
        VALUES ('conf_212_80011_suplemento_tf', 1,
                'BEGIN SELECT COUNT(1) INTO :mi_cambio FROM (SELECT cagente FROM seguros WHERE sseguro = :pssegpol MINUS SELECT cagente FROM estseguros WHERE sseguro = :psseguro ); END;'
               );

   COMMIT;

   INSERT INTO pds_supl_permite
               (cconfig, nselect,
                tselect
               )
        VALUES ('conf_828_80011_suplemento_tf', 5,
                'BEGIN select decode(count(1),0,0,9904539) into :hay_valor from suspensionseg
        where sseguro = :pssegpol and finicio < to_date(REPLACE(:pfefecto,''''),''dd/mm/yyyy'') and ffinal is null AND cmotmov = 391; END;'
               );

   INSERT INTO pds_supl_permite
               (cconfig, nselect,
                tselect
               )
        VALUES ('conf_915_80011_suplemento_tf', 10,
                'BEGIN   SELECT pac_seguros.f_suplem_obert(:pssegpol)     INTO :hay_valor     FROM seguros s    WHERE s.sseguro = :pssegpol; END;'
               );

   INSERT INTO pds_supl_permite
               (cconfig, nselect,
                tselect
               )
        VALUES ('conf_918_80011_suplemento_tf', 10,
                'BEGIN   SELECT pac_seguros.f_suplem_obert(:pssegpol)     INTO :hay_valor     FROM seguros s    WHERE s.sseguro = :pssegpol; END;'
               );

   INSERT INTO pds_supl_permite
               (cconfig, nselect,
                tselect
               )
        VALUES ('conf_281_80011_suplemento_tf', 10,
                'BEGIN   SELECT pac_seguros.f_suplem_obert(:pssegpol)     INTO :hay_valor     FROM seguros s    WHERE s.sseguro = :pssegpol; END;'
               );

   INSERT INTO pds_supl_permite
               (cconfig, nselect,
                tselect
               )
        VALUES ('conf_281_80011_suplemento_tf', 150,
                'BEGIN SELECT pac_adm.f_recibos_remesados(:pssegpol) INTO :hay_valor FROM dual; END;'
               );

   INSERT INTO pds_supl_permite
               (cconfig, nselect,
                tselect
               )
        VALUES ('conf_239_80011_suplemento_tf', 150,
                'BEGIN SELECT pac_adm.f_recibos_remesados(:pssegpol) INTO :hay_valor FROM dual; END;'
               );

   INSERT INTO pds_supl_permite
               (cconfig, nselect,
                tselect
               )
        VALUES ('conf_141_80011_suplemento_tf', 10,
                'BEGIN   SELECT pac_seguros.f_suplem_obert(:pssegpol)     INTO :hay_valor     FROM seguros s    WHERE s.sseguro = :pssegpol; END;'
               );

   INSERT INTO pds_supl_permite
               (cconfig, nselect,
                tselect
               )
        VALUES ('conf_673_80011_suplemento_tf', 1,
                'BEGIN
  SELECT DECODE (COUNT (s.sseguro), 0, 9902427, 0)
    INTO :hay_valor
    FROM seguros s
   WHERE s.sseguro = :pssegpol
     AND (EXISTS (SELECT 1
                   FROM age_corretaje a
                  WHERE a.sseguro = s.sseguro
                    AND a.cagente = pac_md_common.f_get_cxtagente
                    AND a.islider = 1)
          OR EXISTS (SELECT 1 FROM age_corretaje ctj, agentes_agente_pol bb
                      WHERE ctj.sseguro=s.sseguro
                      and bb.cempres=s.cempres
                      and bb.cagente=ctj.cagente
                      and ctj.islider = 1)
          OR NOT EXISTS (SELECT 1
                           FROM age_corretaje a
                          WHERE a.sseguro = s.sseguro)); END;'
               );

   INSERT INTO pds_supl_permite
               (cconfig, nselect,
                tselect
               )
        VALUES ('conf_673_80011_suplemento_tf', 2,
                'BEGIN   SELECT decode(pac_prenotificaciones.f_valida_prenoti_cobban(s.cempres, s.ccobban, s.sseguro),0,0,9903192) INTO :hay_valor FROM seguros s WHERE s.sseguro = :pssegpol; END;'
               );

   INSERT INTO pds_supl_permite
               (cconfig, nselect,
                tselect
               )
        VALUES ('conf_673_80011_suplemento_tf', 3,
                'BEGIN   SELECT pac_seguros.f_suplem_obert(:pssegpol)     INTO :hay_valor     FROM seguros s    WHERE s.sseguro = :pssegpol; END;'
               );

   INSERT INTO pds_supl_permite
               (cconfig, nselect,
                tselect
               )
        VALUES ('conf_673_80011_suplemento_tf', 150,
                'BEGIN SELECT DECODE(count(r.nrecibo), 0, 0, 9906497) INTO :hay_valor FROM movrecibo m, recibos r, seguros s WHERE s.sseguro= :pssegpol AND s.sseguro= r.sseguro AND r.nrecibo= m.nrecibo AND m.fmovfin IS NULL AND m.cestrec= 3; END;'
               );

   INSERT INTO pds_supl_permite
               (cconfig, nselect,
                tselect
               )
        VALUES ('conf_677_80011_suplemento_tf', 150,
                'BEGIN SELECT pac_adm.f_recibos_remesados(:pssegpol) INTO :hay_valor FROM dual; END;'
               );

   INSERT INTO pds_supl_permite
               (cconfig, nselect,
                tselect
               )
        VALUES ('conf_696_80011_suplemento_tf', 2,
                'BEGIN   SELECT decode(pac_prenotificaciones.f_valida_prenoti_cobban(s.cempres, s.ccobban, s.sseguro),0,0,9903192) INTO :hay_valor FROM seguros s WHERE s.sseguro = :pssegpol; END;'
               );

   INSERT INTO pds_supl_permite
               (cconfig, nselect,
                tselect
               )
        VALUES ('conf_696_80011_suplemento_tf', 150,
                'BEGIN SELECT pac_adm.f_recibos_remesados(:pssegpol) INTO :hay_valor FROM dual; END;'
               );

   INSERT INTO pds_supl_permite
               (cconfig, nselect,
                tselect
               )
        VALUES ('conf_230_80011_suplemento_tf', 10,
                'BEGIN   SELECT pac_seguros.f_suplem_obert(:pssegpol)     INTO :hay_valor     FROM seguros s    WHERE s.sseguro = :pssegpol; END;'
               );

   INSERT INTO pds_supl_permite
               (cconfig, nselect,
                tselect
               )
        VALUES ('conf_230_80011_suplemento_tf', 150,
                'BEGIN SELECT pac_adm.f_recibos_remesados(:pssegpol) INTO :hay_valor FROM dual; END;'
               );

   INSERT INTO pds_supl_permite
               (cconfig, nselect,
                tselect
               )
        VALUES ('conf_828_80011_suplemento_tf', 1,
                ' BEGIN
  SELECT DECODE (COUNT (s.sseguro), 0, 9902427, 0)
    INTO :hay_valor
    FROM seguros s
   WHERE s.sseguro = :pssegpol
     AND (EXISTS (SELECT 1
                   FROM age_corretaje a
                  WHERE a.sseguro = s.sseguro
                    AND a.cagente = pac_md_common.f_get_cxtagente
                    AND a.islider = 1)
          OR EXISTS (SELECT 1 FROM age_corretaje ctj, agentes_agente_pol bb
                      WHERE ctj.sseguro=s.sseguro
                      and bb.cempres=s.cempres
                      and bb.cagente=ctj.cagente
                      and ctj.islider = 1)
          OR NOT EXISTS (SELECT 1
                           FROM age_corretaje a
                          WHERE a.sseguro = s.sseguro)); END;'
               );

   INSERT INTO pds_supl_permite
               (cconfig, nselect,
                tselect
               )
        VALUES ('conf_828_80011_suplemento_tf', 6,
                'BEGIN   SELECT pac_seguros.f_suplem_obert(:pssegpol)     INTO :hay_valor     FROM seguros s    WHERE s.sseguro = :pssegpol; END;'
               );

   INSERT INTO pds_supl_permite
               (cconfig, nselect,
                tselect
               )
        VALUES ('conf_828_80011_suplemento_tf', 150,
                'BEGIN SELECT DECODE(count(r.nrecibo), 0, 0, 9906497) INTO :hay_valor FROM movrecibo m, recibos r, seguros s WHERE s.sseguro= :pssegpol AND s.sseguro= r.sseguro AND r.nrecibo= m.nrecibo AND m.fmovfin IS NULL AND m.cestrec= 3; END;'
               );

   INSERT INTO pds_supl_permite
               (cconfig, nselect,
                tselect
               )
        VALUES ('conf_696_80011_suplemento_tf', 1,
                'BEGIN   SELECT decode(pac_domis.f_valida_domi_cobban(s.cempres, s.ccobban, s.sseguro),0,0,9903191) INTO :hay_valor FROM seguros s WHERE s.sseguro = :pssegpol; END;'
               );

   COMMIT;

   INSERT INTO pds_supl_cod_config
               (cconsupl, cconfig
               )
        VALUES ('SUPL_TOTAL', 'conf_237_80011_suplemento_tf'
               );

   INSERT INTO pds_supl_cod_config
               (cconsupl, cconfig
               )
        VALUES ('SUPL_BBDD', 'conf_685_80011_modif_prop'
               );

   INSERT INTO pds_supl_cod_config
               (cconsupl, cconfig
               )
        VALUES ('SUPL_TOTAL', 'conf_825_80011_suplemento_tf'
               );

   INSERT INTO pds_supl_cod_config
               (cconsupl, cconfig
               )
        VALUES ('SUPL_TOTAL', 'conf_697_80011_suplemento_tf'
               );

   INSERT INTO pds_supl_cod_config
               (cconsupl, cconfig
               )
        VALUES ('SUPL_BBDD', 'conf_697_80011_suplemento_tf'
               );

   INSERT INTO pds_supl_cod_config
               (cconsupl, cconfig
               )
        VALUES ('SUPL_BBDD', 'conf_209_80011_suplemento_tf'
               );

   INSERT INTO pds_supl_cod_config
               (cconsupl, cconfig
               )
        VALUES ('SUPL_BBDD', 'conf_212_80011_suplemento_tf'
               );

   INSERT INTO pds_supl_cod_config
               (cconsupl, cconfig
               )
        VALUES ('SUPL_BBDD', 'conf_230_80011_suplemento_tf'
               );

   INSERT INTO pds_supl_cod_config
               (cconsupl, cconfig
               )
        VALUES ('SUPL_BBDD', 'conf_239_80011_suplemento_tf'
               );

   INSERT INTO pds_supl_cod_config
               (cconsupl, cconfig
               )
        VALUES ('SUPL_BBDD', 'conf_281_80011_suplemento_tf'
               );

   INSERT INTO pds_supl_cod_config
               (cconsupl, cconfig
               )
        VALUES ('SUPL_BBDD', 'conf_288_80011_suplemento_tf'
               );

   INSERT INTO pds_supl_cod_config
               (cconsupl, cconfig
               )
        VALUES ('SUPL_BBDD', 'conf_611_80011_suplemento_tf'
               );

   INSERT INTO pds_supl_cod_config
               (cconsupl, cconfig
               )
        VALUES ('SUPL_BBDD', 'conf_673_80011_suplemento_tf'
               );

   INSERT INTO pds_supl_cod_config
               (cconsupl, cconfig
               )
        VALUES ('SUPL_BBDD', 'conf_677_80011_suplemento_tf'
               );

   INSERT INTO pds_supl_cod_config
               (cconsupl, cconfig
               )
        VALUES ('SUPL_BBDD', 'conf_684_80011_suplemento_tf'
               );

   INSERT INTO pds_supl_cod_config
               (cconsupl, cconfig
               )
        VALUES ('SUPL_BBDD', 'conf_696_80011_suplemento_tf'
               );

   INSERT INTO pds_supl_cod_config
               (cconsupl, cconfig
               )
        VALUES ('SUPL_BBDD', 'conf_828_80011_suplemento_tf'
               );

   INSERT INTO pds_supl_cod_config
               (cconsupl, cconfig
               )
        VALUES ('SUPL_BBDD', 'conf_915_80011_suplemento_tf'
               );

   INSERT INTO pds_supl_cod_config
               (cconsupl, cconfig
               )
        VALUES ('SUPL_BBDD', 'conf_918_80011_suplemento_tf'
               );

   INSERT INTO pds_supl_cod_config
               (cconsupl, cconfig
               )
        VALUES ('SUPL_BBDD', 'conf_971_80011_suplemento_tf'
               );

   INSERT INTO pds_supl_cod_config
               (cconsupl, cconfig
               )
        VALUES ('SUPL_TOTAL', 'conf_141_80011_suplemento_tf'
               );

   INSERT INTO pds_supl_cod_config
               (cconsupl, cconfig
               )
        VALUES ('SUPL_TOTAL', 'conf_209_80011_suplemento_tf'
               );

   INSERT INTO pds_supl_cod_config
               (cconsupl, cconfig
               )
        VALUES ('SUPL_TOTAL', 'conf_212_80011_suplemento_tf'
               );

   INSERT INTO pds_supl_cod_config
               (cconsupl, cconfig
               )
        VALUES ('SUPL_TOTAL', 'conf_230_80011_suplemento_tf'
               );

   INSERT INTO pds_supl_cod_config
               (cconsupl, cconfig
               )
        VALUES ('SUPL_TOTAL', 'conf_239_80011_suplemento_tf'
               );

   INSERT INTO pds_supl_cod_config
               (cconsupl, cconfig
               )
        VALUES ('SUPL_TOTAL', 'conf_281_80011_suplemento_tf'
               );

   INSERT INTO pds_supl_cod_config
               (cconsupl, cconfig
               )
        VALUES ('SUPL_TOTAL', 'conf_288_80011_suplemento_tf'
               );

   INSERT INTO pds_supl_cod_config
               (cconsupl, cconfig
               )
        VALUES ('SUPL_TOTAL', 'conf_611_80011_suplemento_tf'
               );

   INSERT INTO pds_supl_cod_config
               (cconsupl, cconfig
               )
        VALUES ('SUPL_TOTAL', 'conf_673_80011_suplemento_tf'
               );

   INSERT INTO pds_supl_cod_config
               (cconsupl, cconfig
               )
        VALUES ('SUPL_TOTAL', 'conf_677_80011_suplemento_tf'
               );

   INSERT INTO pds_supl_cod_config
               (cconsupl, cconfig
               )
        VALUES ('SUPL_TOTAL', 'conf_684_80011_suplemento_tf'
               );

   INSERT INTO pds_supl_cod_config
               (cconsupl, cconfig
               )
        VALUES ('SUPL_TOTAL', 'conf_696_80011_suplemento_tf'
               );

   INSERT INTO pds_supl_cod_config
               (cconsupl, cconfig
               )
        VALUES ('SUPL_TOTAL', 'conf_828_80011_suplemento_tf'
               );

   INSERT INTO pds_supl_cod_config
               (cconsupl, cconfig
               )
        VALUES ('SUPL_TOTAL', 'conf_915_80011_suplemento_tf'
               );

   INSERT INTO pds_supl_cod_config
               (cconsupl, cconfig
               )
        VALUES ('SUPL_TOTAL', 'conf_918_80011_suplemento_tf'
               );

   INSERT INTO pds_supl_cod_config
               (cconsupl, cconfig
               )
        VALUES ('SUPL_TOTAL', 'conf_971_80011_suplemento_tf'
               );

   INSERT INTO pds_supl_cod_config
               (cconsupl, cconfig
               )
        VALUES ('SUPL_BBDD', 'conf_825_80011_suplemento_tf'
               );

   INSERT INTO pds_supl_cod_config
               (cconsupl, cconfig
               )
        VALUES ('SUPL_BBDD', 'conf_141_80011_suplemento_tf'
               );

   INSERT INTO pds_supl_cod_config
               (cconsupl, cconfig
               )
        VALUES ('SUPL_BBDD', 'conf_237_80011_suplemento_tf'
               );

   INSERT INTO pds_supl_cod_config
               (cconsupl, cconfig
               )
        VALUES ('SUPL_TOTAL', 'conf_685_80011_suplemento_tf'
               );

   INSERT INTO pds_supl_cod_config
               (cconsupl, cconfig
               )
        VALUES ('SUPL_BBDD', 'conf_685_80011_suplemento_tf'
               );

   COMMIT;
END;
/

DECLARE
   CURSOR c_form
   IS
      SELECT *
        FROM cfg_wizard
       WHERE sproduc = 80001;
BEGIN
   FOR i IN c_form
   LOOP
      BEGIN
         INSERT INTO cfg_wizard
                     (cempres, cmodo, ccfgwiz, sproduc, cidcfg,
                      cusualt, falta, cusumod, fmodifi
                     )
              VALUES (i.cempres, i.cmodo, i.ccfgwiz, 80011, i.cidcfg,
                      f_user, f_sysdate, NULL, NULL
                     );
      EXCEPTION
         WHEN DUP_VAL_ON_INDEX
         THEN
            NULL;
      END;
   END LOOP;

   COMMIT;
END;
/