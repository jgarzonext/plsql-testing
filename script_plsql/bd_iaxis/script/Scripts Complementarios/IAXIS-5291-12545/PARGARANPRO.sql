DECLARE
	v_contexto NUMBER := 0;
	
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE pargaranpro WHERE cpargar = 'PRIMA_MANUAL' AND sproduc = 8062;
	DELETE desparam WHERE cparam = 'PRIMA_MANUAL';
	DELETE codparam WHERE cparam = 'PRIMA_MANUAL';
	
	INSERT INTO codparam(cparam, cutili, ctipo, cgrppar, cobliga, tdefecto) VALUES('PRIMA_MANUAL', 3, 2, 'GEN', 0, '0');
	
	INSERT INTO desparam(cparam, cidioma, tparam) VALUES('PRIMA_MANUAL', 1, 'Garantia tarifa manual');
	INSERT INTO desparam(cparam, cidioma, tparam) VALUES('PRIMA_MANUAL', 2, 'Garantia tarifa manual');
	INSERT INTO desparam(cparam, cidioma, tparam) VALUES('PRIMA_MANUAL', 8, 'Garantia tarifa manual');
	
	INSERT INTO pargaranpro(cramo, cmodali, ctipseg, ccolect, cactivi, cgarant, cpargar, cvalpar, sproduc, tvalpar, fvalpar) 
			VALUES (8, 1, 2, 0, 0, 7762, 'PRIMA_MANUAL', 0,8062, NULL, NULL);
			
	INSERT INTO pargaranpro(cramo, cmodali, ctipseg, ccolect, cactivi, cgarant, cpargar, cvalpar, sproduc, tvalpar, fvalpar) 
			VALUES (8, 1, 2, 0, 0, 7052, 'PRIMA_MANUAL', 1,8062, NULL, NULL);
			
	INSERT INTO pargaranpro(cramo, cmodali, ctipseg, ccolect, cactivi, cgarant, cpargar, cvalpar, sproduc, tvalpar, fvalpar) 
			VALUES (8, 1, 2, 0, 0, 7032, 'PRIMA_MANUAL', 1,8062, NULL, NULL);
	
	INSERT INTO pargaranpro(cramo, cmodali, ctipseg, ccolect, cactivi, cgarant, cpargar, cvalpar, sproduc, tvalpar, fvalpar) 
			VALUES (8, 1, 2, 0, 0, 7051, 'PRIMA_MANUAL', 1,8062, NULL, NULL);
			
	INSERT INTO pargaranpro(cramo, cmodali, ctipseg, ccolect, cactivi, cgarant, cpargar, cvalpar, sproduc, tvalpar, fvalpar) 
			VALUES (8, 1, 2, 0, 0, 7031, 'PRIMA_MANUAL', 1,8062, NULL, NULL);

	INSERT INTO pargaranpro(cramo, cmodali, ctipseg, ccolect, cactivi, cgarant, cpargar, cvalpar, sproduc, tvalpar, fvalpar) 
			VALUES (8, 1, 2, 0, 0, 7062, 'PRIMA_MANUAL', 1,8062, NULL, NULL);

	INSERT INTO pargaranpro(cramo, cmodali, ctipseg, ccolect, cactivi, cgarant, cpargar, cvalpar, sproduc, tvalpar, fvalpar) 
			VALUES (8, 1, 2, 0, 0, 7042, 'PRIMA_MANUAL', 1,8062, NULL, NULL);
			
	COMMIT;
	
END;
/