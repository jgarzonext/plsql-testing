DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE parproductos WHERE cparpro = 'MAX_BEN_ADI' AND sproduc IN (8062, 8063, 8064, 80038, 80039, 80040, 80041, 80042, 80043, 80044);
	DELETE desparam WHERE cparam = 'MAX_BEN_ADI';
	DELETE codparam WHERE cparam = 'MAX_BEN_ADI';
	
	INSERT INTO codparam(cparam, cutili, ctipo, cgrppar, cobliga, tdefecto) VALUES('MAX_BEN_ADI', 1, 2, 'GEN', 0, '0');
	
	INSERT INTO desparam(cparam, cidioma, tparam) VALUES('MAX_BEN_ADI', 1, 'Màxim nombre de beneficiaris addicionals');
	INSERT INTO desparam(cparam, cidioma, tparam) VALUES('MAX_BEN_ADI', 2, 'Máximo número de beneficiarios adicionales');
	INSERT INTO desparam(cparam, cidioma, tparam) VALUES('MAX_BEN_ADI', 8, 'Máximo número de beneficiarios adicionales');
	
	INSERT INTO parproductos(sproduc, cparpro, cvalpar) VALUES (80038, 'MAX_BEN_ADI', 1);
	INSERT INTO parproductos(sproduc, cparpro, cvalpar) VALUES (80039, 'MAX_BEN_ADI', 1);
	INSERT INTO parproductos(sproduc, cparpro, cvalpar) VALUES (80040, 'MAX_BEN_ADI', 1);
	INSERT INTO parproductos(sproduc, cparpro, cvalpar) VALUES (80041, 'MAX_BEN_ADI', 1);
	INSERT INTO parproductos(sproduc, cparpro, cvalpar) VALUES (80042, 'MAX_BEN_ADI', 1);
	INSERT INTO parproductos(sproduc, cparpro, cvalpar) VALUES (80043, 'MAX_BEN_ADI', 1);
	INSERT INTO parproductos(sproduc, cparpro, cvalpar) VALUES (80044, 'MAX_BEN_ADI', 1);
	INSERT INTO parproductos(sproduc, cparpro, cvalpar) VALUES (8062, 'MAX_BEN_ADI', 1);
	INSERT INTO parproductos(sproduc, cparpro, cvalpar) VALUES (8063, 'MAX_BEN_ADI', 1);
	INSERT INTO parproductos(sproduc, cparpro, cvalpar) VALUES (8064, 'MAX_BEN_ADI', 1);
	
	
	COMMIT;
	
END;
/