DECLARE
	
	v_contexto NUMBER := 0;
	
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
		
	-- Movimientos a coberturas
	DELETE pds_supl_validacio where cconfig = 'conf_915_80038_suplemento_tf' and nselect = 3;
	DELETE pds_supl_validacio where cconfig = 'conf_915_80039_suplemento_tf' and nselect = 3;
	DELETE pds_supl_validacio where cconfig = 'conf_915_80040_suplemento_tf' and nselect = 3;
	DELETE pds_supl_validacio where cconfig = 'conf_915_80041_suplemento_tf' and nselect = 3;
	DELETE pds_supl_validacio where cconfig = 'conf_915_80042_suplemento_tf' and nselect = 3;
	DELETE pds_supl_validacio where cconfig = 'conf_915_80043_suplemento_tf' and nselect = 3;
	DELETE pds_supl_validacio where cconfig = 'conf_915_80044_suplemento_tf' and nselect = 3;
	DELETE pds_supl_validacio where cconfig = 'conf_915_8062_suplemento_tf' and nselect = 3;
	DELETE pds_supl_validacio where cconfig = 'conf_915_8063_suplemento_tf' and nselect = 3;
	DELETE pds_supl_validacio where cconfig = 'conf_915_8064_suplemento_tf' and nselect = 3;
	
	-- Alta de amparos
	DELETE pds_supl_validacio where cconfig = 'conf_237_80038_suplemento_tf' and nselect = 2;
	DELETE pds_supl_validacio where cconfig = 'conf_237_80039_suplemento_tf' and nselect = 2;
	DELETE pds_supl_validacio where cconfig = 'conf_237_80040_suplemento_tf' and nselect = 2;
	DELETE pds_supl_validacio where cconfig = 'conf_237_80041_suplemento_tf' and nselect = 2;
	DELETE pds_supl_validacio where cconfig = 'conf_237_80042_suplemento_tf' and nselect = 2;
	DELETE pds_supl_validacio where cconfig = 'conf_237_80043_suplemento_tf' and nselect = 2;
	DELETE pds_supl_validacio where cconfig = 'conf_237_80044_suplemento_tf' and nselect = 2;
	DELETE pds_supl_validacio where cconfig = 'conf_237_8062_suplemento_tf' and nselect = 2;
	DELETE pds_supl_validacio where cconfig = 'conf_237_8063_suplemento_tf' and nselect = 2;
	DELETE pds_supl_validacio where cconfig = 'conf_237_8064_suplemento_tf' and nselect = 2;

	-- Baja de amparos
	DELETE pds_supl_validacio where cconfig = 'conf_239_80038_suplemento_tf' and nselect = 4;
	DELETE pds_supl_validacio where cconfig = 'conf_239_80039_suplemento_tf' and nselect = 4;
	DELETE pds_supl_validacio where cconfig = 'conf_239_80040_suplemento_tf' and nselect = 4;
	DELETE pds_supl_validacio where cconfig = 'conf_239_80041_suplemento_tf' and nselect = 4;
	DELETE pds_supl_validacio where cconfig = 'conf_239_80042_suplemento_tf' and nselect = 4;
	DELETE pds_supl_validacio where cconfig = 'conf_239_80043_suplemento_tf' and nselect = 4;
	DELETE pds_supl_validacio where cconfig = 'conf_239_80044_suplemento_tf' and nselect = 4;
	DELETE pds_supl_validacio where cconfig = 'conf_239_8062_suplemento_tf' and nselect = 4;
	DELETE pds_supl_validacio where cconfig = 'conf_239_8063_suplemento_tf' and nselect = 4;
	DELETE pds_supl_validacio where cconfig = 'conf_239_8064_suplemento_tf' and nselect = 4;
	
	
	-- Movimientos a coberturas
	INSERT INTO pds_supl_validacio (cconfig, nselect, tselect) VALUES ('conf_915_80038_suplemento_tf', 3, 'BEGIN
		   SELECT COUNT(1)
			INTO :mi_cambio
			 FROM ((SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)
							   )
			 MINUS
			 SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL))
			 UNION
			 (SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL)
			 MINUS
			 SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)))); END;');

	INSERT INTO pds_supl_validacio (cconfig, nselect, tselect) VALUES ('conf_915_80039_suplemento_tf', 3, 'BEGIN
		   SELECT COUNT(1)
			INTO :mi_cambio
			 FROM ((SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)
							   )
			 MINUS
			 SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL))
			 UNION
			 (SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL)
			 MINUS
			 SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)))); END;');

	INSERT INTO pds_supl_validacio (cconfig, nselect, tselect) VALUES ('conf_915_80040_suplemento_tf', 3, 'BEGIN
		   SELECT COUNT(1)
			INTO :mi_cambio
			 FROM ((SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)
							   )
			 MINUS
			 SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL))
			 UNION
			 (SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL)
			 MINUS
			 SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)))); END;');

	INSERT INTO pds_supl_validacio (cconfig, nselect, tselect) VALUES ('conf_915_80041_suplemento_tf', 3, 'BEGIN
		   SELECT COUNT(1)
			INTO :mi_cambio
			 FROM ((SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)
							   )
			 MINUS
			 SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL))
			 UNION
			 (SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL)
			 MINUS
			 SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)))); END;');

	INSERT INTO pds_supl_validacio (cconfig, nselect, tselect) VALUES ('conf_915_80042_suplemento_tf', 3, 'BEGIN
		   SELECT COUNT(1)
			INTO :mi_cambio
			 FROM ((SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)
							   )
			 MINUS
			 SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL))
			 UNION
			 (SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL)
			 MINUS
			 SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)))); END;');

	INSERT INTO pds_supl_validacio (cconfig, nselect, tselect) VALUES ('conf_915_80043_suplemento_tf', 3, 'BEGIN
		   SELECT COUNT(1)
			INTO :mi_cambio
			 FROM ((SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)
							   )
			 MINUS
			 SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL))
			 UNION
			 (SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL)
			 MINUS
			 SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)))); END;');

	INSERT INTO pds_supl_validacio (cconfig, nselect, tselect) VALUES ('conf_915_80044_suplemento_tf', 3, 'BEGIN
		   SELECT COUNT(1)
			INTO :mi_cambio
			 FROM ((SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)
							   )
			 MINUS
			 SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL))
			 UNION
			 (SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL)
			 MINUS
			 SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)))); END;');
	
	INSERT INTO pds_supl_validacio (cconfig, nselect, tselect) VALUES ('conf_915_8062_suplemento_tf', 3, 'BEGIN
		   SELECT COUNT(1)
			INTO :mi_cambio
			 FROM ((SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)
							   )
			 MINUS
			 SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL))
			 UNION
			 (SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL)
			 MINUS
			 SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)))); END;');

	INSERT INTO pds_supl_validacio (cconfig, nselect, tselect) VALUES ('conf_915_8063_suplemento_tf', 3, 'BEGIN
		   SELECT COUNT(1)
			INTO :mi_cambio
			 FROM ((SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)
							   )
			 MINUS
			 SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL))
			 UNION
			 (SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL)
			 MINUS
			 SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)))); END;');

	INSERT INTO pds_supl_validacio (cconfig, nselect, tselect) VALUES ('conf_915_8064_suplemento_tf', 3, 'BEGIN
		   SELECT COUNT(1)
			INTO :mi_cambio
			 FROM ((SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)
							   )
			 MINUS
			 SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL))
			 UNION
			 (SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL)
			 MINUS
			 SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)))); END;');
	
	-- Alta de amparos
	INSERT INTO pds_supl_validacio (cconfig, nselect, tselect) VALUES ('conf_237_80038_suplemento_tf', 2, 'BEGIN
		   SELECT COUNT(1)
			INTO :mi_cambio
			 FROM ((SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)
							   )
			 MINUS
			 SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL))
			 UNION
			 (SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL)
			 MINUS
			 SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)))); END;');

	INSERT INTO pds_supl_validacio (cconfig, nselect, tselect) VALUES ('conf_237_80039_suplemento_tf', 2, 'BEGIN
		   SELECT COUNT(1)
			INTO :mi_cambio
			 FROM ((SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)
							   )
			 MINUS
			 SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL))
			 UNION
			 (SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL)
			 MINUS
			 SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)))); END;');

	INSERT INTO pds_supl_validacio (cconfig, nselect, tselect) VALUES ('conf_237_80040_suplemento_tf', 2, 'BEGIN
		   SELECT COUNT(1)
			INTO :mi_cambio
			 FROM ((SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)
							   )
			 MINUS
			 SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL))
			 UNION
			 (SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL)
			 MINUS
			 SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)))); END;');

	INSERT INTO pds_supl_validacio (cconfig, nselect, tselect) VALUES ('conf_237_80041_suplemento_tf', 2, 'BEGIN
		   SELECT COUNT(1)
			INTO :mi_cambio
			 FROM ((SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)
							   )
			 MINUS
			 SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL))
			 UNION
			 (SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL)
			 MINUS
			 SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)))); END;');

	INSERT INTO pds_supl_validacio (cconfig, nselect, tselect) VALUES ('conf_237_80042_suplemento_tf', 2, 'BEGIN
		   SELECT COUNT(1)
			INTO :mi_cambio
			 FROM ((SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)
							   )
			 MINUS
			 SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL))
			 UNION
			 (SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL)
			 MINUS
			 SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)))); END;');

	INSERT INTO pds_supl_validacio (cconfig, nselect, tselect) VALUES ('conf_237_80043_suplemento_tf', 2, 'BEGIN
		   SELECT COUNT(1)
			INTO :mi_cambio
			 FROM ((SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)
							   )
			 MINUS
			 SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL))
			 UNION
			 (SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL)
			 MINUS
			 SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)))); END;');

	INSERT INTO pds_supl_validacio (cconfig, nselect, tselect) VALUES ('conf_237_80044_suplemento_tf', 2, 'BEGIN
		   SELECT COUNT(1)
			INTO :mi_cambio
			 FROM ((SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)
							   )
			 MINUS
			 SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL))
			 UNION
			 (SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL)
			 MINUS
			 SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)))); END;');
	
	INSERT INTO pds_supl_validacio (cconfig, nselect, tselect) VALUES ('conf_237_8062_suplemento_tf', 2, 'BEGIN
		   SELECT COUNT(1)
			INTO :mi_cambio
			 FROM ((SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)
							   )
			 MINUS
			 SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL))
			 UNION
			 (SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL)
			 MINUS
			 SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)))); END;');

	INSERT INTO pds_supl_validacio (cconfig, nselect, tselect) VALUES ('conf_237_8063_suplemento_tf', 2, 'BEGIN
		   SELECT COUNT(1)
			INTO :mi_cambio
			 FROM ((SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)
							   )
			 MINUS
			 SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL))
			 UNION
			 (SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL)
			 MINUS
			 SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)))); END;');

	INSERT INTO pds_supl_validacio (cconfig, nselect, tselect) VALUES ('conf_237_8064_suplemento_tf', 2, 'BEGIN
		   SELECT COUNT(1)
			INTO :mi_cambio
			 FROM ((SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)
							   )
			 MINUS
			 SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL))
			 UNION
			 (SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL)
			 MINUS
			 SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)))); END;');
	
	-- Baja de amparos
	INSERT INTO pds_supl_validacio (cconfig, nselect, tselect) VALUES ('conf_239_80038_suplemento_tf', 4, 'BEGIN
		   SELECT COUNT(1)
			INTO :mi_cambio
			 FROM ((SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)
							   )
			 MINUS
			 SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL))
			 UNION
			 (SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL)
			 MINUS
			 SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)))); END;');

	INSERT INTO pds_supl_validacio (cconfig, nselect, tselect) VALUES ('conf_239_80039_suplemento_tf', 4, 'BEGIN
		   SELECT COUNT(1)
			INTO :mi_cambio
			 FROM ((SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)
							   )
			 MINUS
			 SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL))
			 UNION
			 (SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL)
			 MINUS
			 SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)))); END;');

	INSERT INTO pds_supl_validacio (cconfig, nselect, tselect) VALUES ('conf_239_80040_suplemento_tf', 4, 'BEGIN
		   SELECT COUNT(1)
			INTO :mi_cambio
			 FROM ((SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)
							   )
			 MINUS
			 SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL))
			 UNION
			 (SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL)
			 MINUS
			 SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)))); END;');

	INSERT INTO pds_supl_validacio (cconfig, nselect, tselect) VALUES ('conf_239_80041_suplemento_tf', 4, 'BEGIN
		   SELECT COUNT(1)
			INTO :mi_cambio
			 FROM ((SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)
							   )
			 MINUS
			 SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL))
			 UNION
			 (SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL)
			 MINUS
			 SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)))); END;');

	INSERT INTO pds_supl_validacio (cconfig, nselect, tselect) VALUES ('conf_239_80042_suplemento_tf', 4, 'BEGIN
		   SELECT COUNT(1)
			INTO :mi_cambio
			 FROM ((SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)
							   )
			 MINUS
			 SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL))
			 UNION
			 (SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL)
			 MINUS
			 SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)))); END;');

	INSERT INTO pds_supl_validacio (cconfig, nselect, tselect) VALUES ('conf_239_80043_suplemento_tf', 4, 'BEGIN
		   SELECT COUNT(1)
			INTO :mi_cambio
			 FROM ((SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)
							   )
			 MINUS
			 SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL))
			 UNION
			 (SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL)
			 MINUS
			 SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)))); END;');

	INSERT INTO pds_supl_validacio (cconfig, nselect, tselect) VALUES ('conf_239_80044_suplemento_tf', 4, 'BEGIN
		   SELECT COUNT(1)
			INTO :mi_cambio
			 FROM ((SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)
							   )
			 MINUS
			 SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL))
			 UNION
			 (SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL)
			 MINUS
			 SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)))); END;');
	
	INSERT INTO pds_supl_validacio (cconfig, nselect, tselect) VALUES ('conf_239_8062_suplemento_tf', 4, 'BEGIN
		   SELECT COUNT(1)
			INTO :mi_cambio
			 FROM ((SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)
							   )
			 MINUS
			 SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL))
			 UNION
			 (SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL)
			 MINUS
			 SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)))); END;');

	INSERT INTO pds_supl_validacio (cconfig, nselect, tselect) VALUES ('conf_239_8063_suplemento_tf', 4, 'BEGIN
		   SELECT COUNT(1)
			INTO :mi_cambio
			 FROM ((SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)
							   )
			 MINUS
			 SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL))
			 UNION
			 (SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL)
			 MINUS
			 SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)))); END;');

	INSERT INTO pds_supl_validacio (cconfig, nselect, tselect) VALUES ('conf_239_8064_suplemento_tf', 4, 'BEGIN
		   SELECT COUNT(1)
			INTO :mi_cambio
			 FROM ((SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)
							   )
			 MINUS
			 SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL))
			 UNION
			 (SELECT  b.cgrup, b.cnivel, b.cimpmin, b.impmin, b.impvalor1
			 FROM estbf_bonfranseg b
			 WHERE b.sseguro = :psseguro
			 AND b.nmovimi = :pnmovimi
			 AND b.nriesgo IN (SELECT r.nriesgo
							   FROM riesgos r
							   WHERE r.sseguro = :pssegpol
							   AND r.fanulac IS NULL)
			 AND b.nriesgo IN (SELECT er.nriesgo
							   FROM estriesgos er
							   WHERE er.sseguro = :psseguro
							   AND er.fanulac IS NULL)
			 MINUS
			 SELECT b2.cgrup, b2.cnivel, b2.cimpmin, b2.impmin, b2.impvalor1
			 FROM bf_bonfranseg b2
			 WHERE b2.sseguro = :pssegpol
			 AND b2.nmovimi = (SELECT MAX(b1.nmovimi)
							   FROM bf_bonfranseg b1
							   WHERE b1.sseguro = :pssegpol
							   AND b1.nmovimi < :pnmovimi
							   AND b1.nriesgo IN (SELECT r.nriesgo
												  FROM riesgos r
												  WHERE r.sseguro = :pssegpol
												  AND r.fanulac IS NULL)
							   AND b1.nriesgo IN (SELECT er.nriesgo
												  FROM estriesgos er
												  WHERE er.sseguro = :psseguro
												  AND er.fanulac IS NULL)))); END;');
    COMMIT;
	
END;
/
