DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE parproductos WHERE cparpro = 'BENIDENT_RIES' AND sproduc BETWEEN 8062 AND 8064;
	DELETE desparam WHERE cparam = 'BENIDENT_RIES';
	DELETE codparam WHERE cparam = 'BENIDENT_RIES';
	
	INSERT INTO codparam(cparam, cutili, ctipo, cgrppar, cobliga, tdefecto) VALUES('BENIDENT_RIES', 1, 2, 'GEN', 0, '0');
	
	INSERT INTO desparam(cparam, cidioma, tparam) VALUES('BENIDENT_RIES', 1, 'Beneficiaris identificats per defecte a nivell de risc (sperson)');
	INSERT INTO desparam(cparam, cidioma, tparam) VALUES('BENIDENT_RIES', 2, 'Beneficiarios identificados por defecto a nivel de riesgo (sperson)');
	INSERT INTO desparam(cparam, cidioma, tparam) VALUES('BENIDENT_RIES', 8, 'Beneficiarios identificados por defecto a nivel de riesgo (sperson)');
	
	INSERT INTO parproductos(sproduc, cparpro, cvalpar) VALUES (8062, 'BENIDENT_RIES', 2497);
	INSERT INTO parproductos(sproduc, cparpro, cvalpar) VALUES (8063, 'BENIDENT_RIES', 2497);
	INSERT INTO parproductos(sproduc, cparpro, cvalpar) VALUES (8064, 'BENIDENT_RIES', 2497);
	
	COMMIT;
	
END;
/