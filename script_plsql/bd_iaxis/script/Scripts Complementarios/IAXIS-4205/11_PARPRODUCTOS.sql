DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	
	DELETE parproductos WHERE cparpro = 'NO_PRORRATEA_TARIFA' AND sproduc IN(8063, 80004, 80005, 80006, 80008, 80010, 80041, 80042, 80043);
	DELETE desparam WHERE cparam = 'NO_PRORRATEA_TARIFA';
	DELETE codparam WHERE cparam = 'NO_PRORRATEA_TARIFA';

	INSERT INTO codparam (cparam, cutili, ctipo, cgrppar, cobliga, tdefecto, cvisible) VALUES ('NO_PRORRATEA_TARIFA', 1, 2, 'GEN', 0, 0, 1);

	INSERT INTO desparam (cparam, cidioma, tparam) VALUES ('NO_PRORRATEA_TARIFA', 1, 'NO prorrateja en Tarifació');
	INSERT INTO desparam (cparam, cidioma, tparam) VALUES ('NO_PRORRATEA_TARIFA', 2, 'NO Prorratea en Tarifación');
	INSERT INTO desparam (cparam, cidioma, tparam) VALUES ('NO_PRORRATEA_TARIFA', 8, 'NO Prorratea en Tarifación');

	INSERT INTO parproductos (sproduc, cparpro, cvalpar) VALUES (8063, 'NO_PRORRATEA_TARIFA', 1);
	INSERT INTO parproductos (sproduc, cparpro, cvalpar) VALUES (80004, 'NO_PRORRATEA_TARIFA', 1);
	INSERT INTO parproductos (sproduc, cparpro, cvalpar) VALUES (80005, 'NO_PRORRATEA_TARIFA', 1);
	INSERT INTO parproductos (sproduc, cparpro, cvalpar) VALUES (80006, 'NO_PRORRATEA_TARIFA', 1);
	INSERT INTO parproductos (sproduc, cparpro, cvalpar) VALUES (80008, 'NO_PRORRATEA_TARIFA', 1);
	INSERT INTO parproductos (sproduc, cparpro, cvalpar) VALUES (80010, 'NO_PRORRATEA_TARIFA', 1);
	INSERT INTO parproductos (sproduc, cparpro, cvalpar) VALUES (80041, 'NO_PRORRATEA_TARIFA', 1);
	INSERT INTO parproductos (sproduc, cparpro, cvalpar) VALUES (80042, 'NO_PRORRATEA_TARIFA', 1);
	INSERT INTO parproductos (sproduc, cparpro, cvalpar) VALUES (80043, 'NO_PRORRATEA_TARIFA', 1);
	
	
	COMMIT;
	
END;
/