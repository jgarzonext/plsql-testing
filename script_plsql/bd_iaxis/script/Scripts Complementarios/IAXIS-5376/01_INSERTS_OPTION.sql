DELETE FROM PDS_SUPL_COD_CONFIG WHERE CCONFIG = 'conf_685_8063_suplemento_tf';
DELETE FROM PDS_SUPL_FORM WHERE CCONFIG = 'conf_685_8063_suplemento_tf';
DELETE FROM PDS_SUPL_VALIDACIO WHERE CCONFIG = 'conf_685_8063_suplemento_tf';
DELETE FROM PDS_SUPL_CONFIG WHERE CCONFIG = 'conf_685_8063_suplemento_tf';

INSERT INTO PDS_SUPL_CONFIG(CCONFIG, CMOTMOV, SPRODUC, CMODO, CTIPFEC, TFECREC, SUPLCOLEC, CUSUALT, FALTA, CUSUMOD, FMODIFI)
VALUES('conf_685_8063_suplemento_tf', 685, 8063, 'SUPLEMENTO', 1, 'F_SYSDATE', NULL, 'AXIS', '05-JUL-17', NULL, NULL);

INSERT INTO PDS_SUPL_COD_CONFIG(CCONSUPL, CCONFIG) VALUES('SUPL_BBDD', 'conf_685_8063_suplemento_tf');
INSERT INTO PDS_SUPL_COD_CONFIG(CCONSUPL, CCONFIG) VALUES('SUPL_TOTAL', 'conf_685_8063_suplemento_tf');

INSERT INTO PDS_SUPL_FORM(CCONFIG, TFORM) VALUES('conf_685_8063_suplemento_tf', 'BBDD');

INSERT INTO PDS_SUPL_VALIDACIO(CCONFIG, NSELECT, TSELECT) VALUES('conf_685_8063_suplemento_tf', 1, 'BEGIN
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
                     
INSERT INTO PDS_SUPL_VALIDACIO(CCONFIG, NSELECT, TSELECT) VALUES('conf_685_8063_suplemento_tf', 2, 'BEGIN
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
		UNION
			SELECT e.cpregun as cepregun, 0 as crespue, TO_CHAR(e.nvalor) as trespue, e.nriesgo as nriesgo
             FROM estpregunsegtab e, estseguros s, pregunpro p
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
                     AND p.esccero = 1))); END;')  ;  
					 
COMMIT;
/				 