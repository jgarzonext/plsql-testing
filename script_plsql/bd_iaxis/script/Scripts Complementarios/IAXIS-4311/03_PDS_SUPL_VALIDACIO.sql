DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE pds_supl_validacio WHERE cconfig IN ('conf_684_80007_suplemento_tf', 'conf_684_80008_suplemento_tf');
	
	INSERT INTO pds_supl_validacio (cconfig,nselect,tselect) VALUES ('conf_684_80007_suplemento_tf','1',' BEGIN
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
							  AND nmovimi = :pnmovimi); END; ');
	
	INSERT INTO pds_supl_validacio (cconfig,nselect,tselect) VALUES ('conf_684_80007_suplemento_tf','2',' BEGIN
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
											  WHERE sseguro = :pssegpol)); END; ');
	
	INSERT INTO pds_supl_validacio (cconfig,nselect,tselect) VALUES ('conf_684_80008_suplemento_tf','1',' BEGIN
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
							  AND nmovimi = :pnmovimi); END; ');
	
	INSERT INTO pds_supl_validacio (cconfig,nselect,tselect) VALUES ('conf_684_80008_suplemento_tf','2',' BEGIN
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
											  WHERE sseguro = :pssegpol)); END; ');
	
	
	DELETE pds_supl_validacio WHERE cconfig IN ('conf_828_80007_suplemento_tf', 'conf_828_80008_suplemento_tf', 'conf_828_80009_suplemento_tf', 'conf_828_80010_suplemento_tf');
	
	INSERT INTO pds_supl_validacio (cconfig,nselect,tselect) VALUES ('conf_828_80007_suplemento_tf','1',' BEGIN SELECT COUNT(1) INTO :mi_cambio FROM (SELECT ctipcom FROM seguros WHERE sseguro = :pssegpol MINUS SELECT ctipcom FROM estseguros WHERE sseguro = :psseguro ); END;');
	INSERT INTO pds_supl_validacio (cconfig,nselect,tselect) VALUES ('conf_828_80007_suplemento_tf','2','BEGIN SELECT COUNT(1) INTO :mi_cambio FROM (SELECT cmodcom,pcomisi,ninialt,nfinalt FROM ESTCOMISIONSEGU WHERE sseguro = :psseguro MINUS SELECT cmodcom,pcomisi,ninialt,nfinalt FROM COMISIONSEGU WHERE sseguro = :pssegpol); END;');
	INSERT INTO pds_supl_validacio (cconfig,nselect,tselect) VALUES ('conf_828_80008_suplemento_tf','1',' BEGIN SELECT COUNT(1) INTO :mi_cambio FROM (SELECT ctipcom FROM seguros WHERE sseguro = :pssegpol MINUS SELECT ctipcom FROM estseguros WHERE sseguro = :psseguro ); END;');
	INSERT INTO pds_supl_validacio (cconfig,nselect,tselect) VALUES ('conf_828_80008_suplemento_tf','2','BEGIN SELECT COUNT(1) INTO :mi_cambio FROM (SELECT cmodcom,pcomisi,ninialt,nfinalt FROM ESTCOMISIONSEGU WHERE sseguro = :psseguro MINUS SELECT cmodcom,pcomisi,ninialt,nfinalt FROM COMISIONSEGU WHERE sseguro = :pssegpol); END;');
	INSERT INTO pds_supl_validacio (cconfig,nselect,tselect) VALUES ('conf_828_80009_suplemento_tf','1',' BEGIN SELECT COUNT(1) INTO :mi_cambio FROM (SELECT ctipcom FROM seguros WHERE sseguro = :pssegpol MINUS SELECT ctipcom FROM estseguros WHERE sseguro = :psseguro ); END;');
	INSERT INTO pds_supl_validacio (cconfig,nselect,tselect) VALUES ('conf_828_80009_suplemento_tf','2','BEGIN SELECT COUNT(1) INTO :mi_cambio FROM (SELECT cmodcom,pcomisi,ninialt,nfinalt FROM ESTCOMISIONSEGU WHERE sseguro = :psseguro MINUS SELECT cmodcom,pcomisi,ninialt,nfinalt FROM COMISIONSEGU WHERE sseguro = :pssegpol); END;');
	INSERT INTO pds_supl_validacio (cconfig,nselect,tselect) VALUES ('conf_828_80010_suplemento_tf','1',' BEGIN SELECT COUNT(1) INTO :mi_cambio FROM (SELECT ctipcom FROM seguros WHERE sseguro = :pssegpol MINUS SELECT ctipcom FROM estseguros WHERE sseguro = :psseguro ); END;');
	INSERT INTO pds_supl_validacio (cconfig,nselect,tselect) VALUES ('conf_828_80010_suplemento_tf','2','BEGIN SELECT COUNT(1) INTO :mi_cambio FROM (SELECT cmodcom,pcomisi,ninialt,nfinalt FROM ESTCOMISIONSEGU WHERE sseguro = :psseguro MINUS SELECT cmodcom,pcomisi,ninialt,nfinalt FROM COMISIONSEGU WHERE sseguro = :pssegpol); END;');
	
	
	DELETE pds_supl_validacio WHERE cconfig IN ('conf_209_80007_suplemento_tf', 'conf_209_80008_suplemento_tf', 'conf_209_80009_suplemento_tf', 'conf_209_80010_suplemento_tf');
	
	INSERT INTO pds_supl_validacio (cconfig,nselect,tselect) VALUES ('conf_209_80007_suplemento_tf','1',' BEGIN SELECT COUNT(1) INTO :mi_cambio FROM (SELECT tnatrie||dbms_lob.substr( tdescrie) FROM riesgos WHERE sseguro = :pssegpol AND nriesgo = (SELECT max(nriesgo) FROM estriesgos WHERE sseguro = :psseguro) MINUS SELECT tnatrie||dbms_lob.substr( tdescrie)  FROM estriesgos WHERE sseguro = :psseguro);END;');
	INSERT INTO pds_supl_validacio (cconfig,nselect,tselect) VALUES ('conf_209_80007_suplemento_tf','2',' BEGIN SELECT COUNT(1) INTO :mi_cambio FROM (SELECT tnatrie||dbms_lob.substr( tdescrie)  FROM estriesgos WHERE sseguro = :psseguro MINUS SELECT tnatrie||dbms_lob.substr( tdescrie )  FROM riesgos WHERE sseguro = :pssegpol AND nriesgo = (SELECT max(nriesgo) FROM estriesgos WHERE sseguro = :psseguro) );END;');
	INSERT INTO pds_supl_validacio (cconfig,nselect,tselect) VALUES ('conf_209_80008_suplemento_tf','1',' BEGIN SELECT COUNT(1) INTO :mi_cambio FROM (SELECT tnatrie||dbms_lob.substr( tdescrie) FROM riesgos WHERE sseguro = :pssegpol AND nriesgo = (SELECT max(nriesgo) FROM estriesgos WHERE sseguro = :psseguro) MINUS SELECT tnatrie||dbms_lob.substr( tdescrie)  FROM estriesgos WHERE sseguro = :psseguro);END;');
	INSERT INTO pds_supl_validacio (cconfig,nselect,tselect) VALUES ('conf_209_80008_suplemento_tf','2',' BEGIN SELECT COUNT(1) INTO :mi_cambio FROM (SELECT tnatrie||dbms_lob.substr( tdescrie)  FROM estriesgos WHERE sseguro = :psseguro MINUS SELECT tnatrie||dbms_lob.substr( tdescrie )  FROM riesgos WHERE sseguro = :pssegpol AND nriesgo = (SELECT max(nriesgo) FROM estriesgos WHERE sseguro = :psseguro) );END;');
	INSERT INTO pds_supl_validacio (cconfig,nselect,tselect) VALUES ('conf_209_80009_suplemento_tf','1',' BEGIN SELECT COUNT(1) INTO :mi_cambio FROM (SELECT tnatrie||dbms_lob.substr( tdescrie) FROM riesgos WHERE sseguro = :pssegpol AND nriesgo = (SELECT max(nriesgo) FROM estriesgos WHERE sseguro = :psseguro) MINUS SELECT tnatrie||dbms_lob.substr( tdescrie)  FROM estriesgos WHERE sseguro = :psseguro);END;');
	INSERT INTO pds_supl_validacio (cconfig,nselect,tselect) VALUES ('conf_209_80009_suplemento_tf','2',' BEGIN SELECT COUNT(1) INTO :mi_cambio FROM (SELECT tnatrie||dbms_lob.substr( tdescrie)  FROM estriesgos WHERE sseguro = :psseguro MINUS SELECT tnatrie||dbms_lob.substr( tdescrie )  FROM riesgos WHERE sseguro = :pssegpol AND nriesgo = (SELECT max(nriesgo) FROM estriesgos WHERE sseguro = :psseguro) );END;');
	INSERT INTO pds_supl_validacio (cconfig,nselect,tselect) VALUES ('conf_209_80010_suplemento_tf','1',' BEGIN SELECT COUNT(1) INTO :mi_cambio FROM (SELECT tnatrie||dbms_lob.substr( tdescrie) FROM riesgos WHERE sseguro = :pssegpol AND nriesgo = (SELECT max(nriesgo) FROM estriesgos WHERE sseguro = :psseguro) MINUS SELECT tnatrie||dbms_lob.substr( tdescrie)  FROM estriesgos WHERE sseguro = :psseguro);END;');
	INSERT INTO pds_supl_validacio (cconfig,nselect,tselect) VALUES ('conf_209_80010_suplemento_tf','2',' BEGIN SELECT COUNT(1) INTO :mi_cambio FROM (SELECT tnatrie||dbms_lob.substr( tdescrie)  FROM estriesgos WHERE sseguro = :psseguro MINUS SELECT tnatrie||dbms_lob.substr( tdescrie )  FROM riesgos WHERE sseguro = :pssegpol AND nriesgo = (SELECT max(nriesgo) FROM estriesgos WHERE sseguro = :psseguro) );END;');
	
	
	COMMIT;
	
END;
/