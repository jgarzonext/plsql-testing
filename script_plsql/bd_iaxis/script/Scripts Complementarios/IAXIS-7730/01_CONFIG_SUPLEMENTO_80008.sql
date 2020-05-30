-- cambio de intermediario

DELETE FROM CFG_WIZARD WHERE SPRODUC = 80008 AND CMODO = 'SUPLEMENTO_212';
			
INSERT INTO CFG_WIZARD (CEMPRES, CMODO, CCFGWIZ, SPRODUC, CIDCFG) VALUES ('24', 'SUPLEMENTO_212', 'CFG_CENTRAL', '80008', '240212');

delete from PDS_SUPL_VALIDACIO where cconfig like '%212%' and cconfig like '%80008%';

Insert into PDS_SUPL_VALIDACIO (CCONFIG,NSELECT,TSELECT) values ('conf_212_80008_suplemento_tf','1','BEGIN SELECT COUNT(1) INTO :mi_cambio FROM (SELECT cagente FROM seguros WHERE sseguro = :pssegpol MINUS SELECT cagente FROM estseguros WHERE sseguro = :psseguro ); END;');

-- cambio de intermediario

					 
-- cambio de comision			 
					
DELETE FROM CFG_WIZARD WHERE SPRODUC = 80008 AND CMODO = 'SUPLEMENTO_828';
			
INSERT INTO CFG_WIZARD (CEMPRES, CMODO, CCFGWIZ, SPRODUC, CIDCFG) VALUES ('24', 'SUPLEMENTO_828', 'CFG_CENTRAL', '80008', '240828');

-- cambio de comision	


-- cambio de coaseguro	

DELETE FROM CFG_WIZARD WHERE SPRODUC = 80008 AND CMODO = 'SUPLEMENTO_696';
			
INSERT INTO CFG_WIZARD (CEMPRES, CMODO, CCFGWIZ, SPRODUC, CIDCFG) VALUES ('24', 'SUPLEMENTO_696', 'CFG_CENTRAL', '80008', '240696');

-- cambio de coaseguro	


-- cambio de preguntas de riesgo	

DELETE FROM CFG_WIZARD WHERE SPRODUC = 80008 AND CMODO = 'SUPLEMENTO_684';
			
INSERT INTO CFG_WIZARD (CEMPRES, CMODO, CCFGWIZ, SPRODUC, CIDCFG) VALUES ('24', 'SUPLEMENTO_684', 'CFG_CENTRAL', '80008', '240684');


delete from PDS_SUPL_VALIDACIO where cconfig like '%684%' and cconfig like '%80008%' and NSELECT in (3,4);

Insert into PDS_SUPL_VALIDACIO (CCONFIG,NSELECT,TSELECT) values ('conf_684_80008_suplemento_tf','3','BEGIN
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
                     AND p.esccero = 1))); END;');
					 
Insert into PDS_SUPL_VALIDACIO (CCONFIG,NSELECT,TSELECT) values ('conf_684_80005_suplemento_tf','4','BEGIN
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
                     AND p.esccero = 1))); END;');

-- cambio de preguntas de riesgo	


-- cambio de ASEGURADO

delete from PDS_SUPL_VALIDACIO where cconfig like '%230%' and cconfig like '%80008%';

Insert into PDS_SUPL_VALIDACIO (CCONFIG,NSELECT,TSELECT) values ('conf_230_80008_suplemento_tf','1',' BEGIN SELECT COUNT (1) INTO :mi_cambio FROM (SELECT pac_persona.f_sperson_spereal(sperson), ffecfin FROM estassegurats WHERE sseguro = :psseguro MINUS SELECT sperson, ffecfin FROM asegurados WHERE sseguro = :pssegpol); END;');

-- cambio de ASEGURADO


-- Cambio de beneficiario
delete from PDS_SUPL_VALIDACIO where cconfig like '%697%' and cconfig like '%80008%';

Insert into PDS_SUPL_VALIDACIO (CCONFIG,NSELECT,TSELECT) values ('conf_697_80008_suplemento_tf','1','BEGIN
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
                                WHERE sseguro = :psseguro)); END; ');
								
-- Cambio de beneficiario
								

-- Cambio de naturaleza del riesgo								
DELETE FROM CFG_WIZARD WHERE SPRODUC = 80008 AND CMODO = 'SUPLEMENTO_209';								
								
INSERT INTO CFG_WIZARD (CEMPRES, CMODO, CCFGWIZ, SPRODUC, CIDCFG) VALUES ('24', 'SUPLEMENTO_209', 'CFG_CENTRAL', '80008', '240209');



delete from PDS_SUPL_VALIDACIO where cconfig like '%825%' and cconfig like '%80008%';

Insert into PDS_SUPL_VALIDACIO (CCONFIG,NSELECT,TSELECT) values ('conf_825_80008_suplemento_tf','1','BEGIN
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
                               WHERE c1.sseguro = c.sseguro))); END;');
-- Cambio de naturaleza del riesgo				
					 
COMMIT;
/				 