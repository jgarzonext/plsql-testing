delete from pregunprogaran where sproduc in (80004, 80005, 80006, 80008, 80010, 80041, 80042, 80043) and cpregun = 3000;

delete from PDS_SUPL_VALIDACIO where cconfig like '%281%' and cconfig like '%80008%';

Insert into PDS_SUPL_VALIDACIO (CCONFIG,NSELECT,TSELECT) values ('conf_281_80008_suplemento_tf','1','BEGIN
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
               AND NVL (f_pargaranpro_v (s.cramo, s.cmodali, s.ctipseg, s.ccolect, s.cactivi, g.cgarant, upper (''TIPO'')), 0) NOT IN (4, 5,9))); END;');		   
			  
Insert into PDS_SUPL_VALIDACIO (CCONFIG,NSELECT,TSELECT) values ('conf_281_80008_suplemento_tf','3','BEGIN
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
                                AND er.fanulac IS NULL)); END;');
								
Insert into PDS_SUPL_VALIDACIO (CCONFIG,NSELECT,TSELECT) values ('conf_281_80008_suplemento_tf','2','BEGIN
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
                                AND er.fanulac IS NULL)); END;');
								
Insert into PDS_SUPL_VALIDACIO (CCONFIG,NSELECT,TSELECT) values ('conf_281_80008_suplemento_tf','4','BEGIN
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
                                AND ER.FANULAC IS NULL)); END;');	




delete from PDS_SUPL_VALIDACIO where cconfig like '%281%' and cconfig like '%80010%';

Insert into PDS_SUPL_VALIDACIO (CCONFIG,NSELECT,TSELECT) values ('conf_281_80010_suplemento_tf','1','BEGIN
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
               AND NVL (f_pargaranpro_v (s.cramo, s.cmodali, s.ctipseg, s.ccolect, s.cactivi, g.cgarant, upper (''TIPO'')), 0) NOT IN (4, 5,9))); END;');		   
			  
Insert into PDS_SUPL_VALIDACIO (CCONFIG,NSELECT,TSELECT) values ('conf_281_80010_suplemento_tf','3','BEGIN
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
                                AND er.fanulac IS NULL)); END;');
								
Insert into PDS_SUPL_VALIDACIO (CCONFIG,NSELECT,TSELECT) values ('conf_281_80010_suplemento_tf','2','BEGIN
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
                                AND er.fanulac IS NULL)); END;');
								
Insert into PDS_SUPL_VALIDACIO (CCONFIG,NSELECT,TSELECT) values ('conf_281_80010_suplemento_tf','4','BEGIN
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
                                AND ER.FANULAC IS NULL)); END;');	






								
														
commit;								
