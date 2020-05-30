DECLARE
	v_contexto NUMBER := 0;
	
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE pargaranpro WHERE cpargar = 'CAPITAL_CARATULA';
	DELETE desparam WHERE cparam = 'CAPITAL_CARATULA';
	DELETE codparam WHERE cparam = 'CAPITAL_CARATULA';
	
	INSERT INTO codparam(cparam, cutili, ctipo, cgrppar, cobliga, tdefecto) VALUES('CAPITAL_CARATULA', 3, 2, 'GEN', 0, '0');
	
	INSERT INTO desparam(cparam, cidioma, tparam) VALUES('CAPITAL_CARATULA', 1, 'Si se calcula su capital para la caratula');
	INSERT INTO desparam(cparam, cidioma, tparam) VALUES('CAPITAL_CARATULA', 2, 'Si se calcula su capital para la caratula');
	INSERT INTO desparam(cparam, cidioma, tparam) VALUES('CAPITAL_CARATULA', 8, 'Si se calcula su capital para la caratula');
	
	INSERT INTO pargaranpro(cramo, cmodali, ctipseg, ccolect, cactivi, cgarant, cpargar, cvalpar, sproduc, tvalpar, fvalpar) 
			VALUES (802, 1, 2, 0, 0, 7762, 'CAPITAL_CARATULA', 1,8062, NULL, NULL);
			
	INSERT INTO pargaranpro(cramo, cmodali, ctipseg, ccolect, cactivi, cgarant, cpargar, cvalpar, sproduc, tvalpar, fvalpar) 
			VALUES (802, 1, 3, 0, 0, 7757, 'CAPITAL_CARATULA', 1,8063, NULL, NULL);

	INSERT INTO pargaranpro(cramo, cmodali, ctipseg, ccolect, cactivi, cgarant, cpargar, cvalpar, sproduc, tvalpar, fvalpar) 
			VALUES (802, 5, 1, 0, 0, 7050, 'CAPITAL_CARATULA', 1,80038, NULL, NULL);
			
	INSERT INTO pargaranpro(cramo, cmodali, ctipseg, ccolect, cactivi, cgarant, cpargar, cvalpar, sproduc, tvalpar, fvalpar) 
			VALUES (802, 5, 1, 0, 1, 7050, 'CAPITAL_CARATULA', 1,80038, NULL, NULL);		
			
	INSERT INTO pargaranpro(cramo, cmodali, ctipseg, ccolect, cactivi, cgarant, cpargar, cvalpar, sproduc, tvalpar, fvalpar) 
			VALUES (802, 6, 1, 0, 0, 7050, 'CAPITAL_CARATULA', 1,80039, NULL, NULL);
			
	INSERT INTO pargaranpro(cramo, cmodali, ctipseg, ccolect, cactivi, cgarant, cpargar, cvalpar, sproduc, tvalpar, fvalpar) 
			VALUES (802, 6, 1, 0, 1, 7050, 'CAPITAL_CARATULA', 1,80039, NULL, NULL);		

	INSERT INTO pargaranpro(cramo, cmodali, ctipseg, ccolect, cactivi, cgarant, cpargar, cvalpar, sproduc, tvalpar, fvalpar) 
			VALUES (802, 6, 2, 0, 0, 7050, 'CAPITAL_CARATULA', 1,80040, NULL, NULL);
			
	INSERT INTO pargaranpro(cramo, cmodali, ctipseg, ccolect, cactivi, cgarant, cpargar, cvalpar, sproduc, tvalpar, fvalpar) 
			VALUES (802, 6, 2, 0, 1, 7050, 'CAPITAL_CARATULA', 1,80040, NULL, NULL);		
			
	INSERT INTO pargaranpro(cramo, cmodali, ctipseg, ccolect, cactivi, cgarant, cpargar, cvalpar, sproduc, tvalpar, fvalpar) 
			VALUES (802, 7, 1, 0, 0, 7050, 'CAPITAL_CARATULA', 1,80041, NULL, NULL);
			
	INSERT INTO pargaranpro(cramo, cmodali, ctipseg, ccolect, cactivi, cgarant, cpargar, cvalpar, sproduc, tvalpar, fvalpar) 
			VALUES (802, 7, 1, 0, 1, 7050, 'CAPITAL_CARATULA', 1,80041, NULL, NULL);		
			
	INSERT INTO pargaranpro(cramo, cmodali, ctipseg, ccolect, cactivi, cgarant, cpargar, cvalpar, sproduc, tvalpar, fvalpar) 
			VALUES (802, 8, 1, 0, 0, 7050, 'CAPITAL_CARATULA', 1,80042, NULL, NULL);
			
	INSERT INTO pargaranpro(cramo, cmodali, ctipseg, ccolect, cactivi, cgarant, cpargar, cvalpar, sproduc, tvalpar, fvalpar) 
			VALUES (802, 8, 1, 0, 1, 7050, 'CAPITAL_CARATULA', 1,80042, NULL, NULL);		

	INSERT INTO pargaranpro(cramo, cmodali, ctipseg, ccolect, cactivi, cgarant, cpargar, cvalpar, sproduc, tvalpar, fvalpar) 
			VALUES (802, 8, 2, 0, 0, 7050, 'CAPITAL_CARATULA', 1,80043, NULL, NULL);
	
	INSERT INTO pargaranpro(cramo, cmodali, ctipseg, ccolect, cactivi, cgarant, cpargar, cvalpar, sproduc, tvalpar, fvalpar) 
			VALUES (802, 8, 2, 0, 1, 7050, 'CAPITAL_CARATULA', 1,80043, NULL, NULL);	

	INSERT INTO pargaranpro(cramo, cmodali, ctipseg, ccolect, cactivi, cgarant, cpargar, cvalpar, sproduc, tvalpar, fvalpar) 
			VALUES (802, 9, 1, 0, 2, 7050, 'CAPITAL_CARATULA', 1,80044, NULL, NULL);	

	INSERT INTO pargaranpro(cramo, cmodali, ctipseg, ccolect, cactivi, cgarant, cpargar, cvalpar, sproduc, tvalpar, fvalpar) 
			VALUES (802, 9, 1, 0, 3, 7050, 'CAPITAL_CARATULA', 1,80044, NULL, NULL);	
			
	INSERT INTO pargaranpro(cramo, cmodali, ctipseg, ccolect, cactivi, cgarant, cpargar, cvalpar, sproduc, tvalpar, fvalpar) 
			VALUES (802, 9, 1, 0, 4, 7050, 'CAPITAL_CARATULA', 1,80044, NULL, NULL);

	INSERT INTO pargaranpro(cramo, cmodali, ctipseg, ccolect, cactivi, cgarant, cpargar, cvalpar, sproduc, tvalpar, fvalpar) 
			VALUES (802, 9, 1, 0, 5, 7050, 'CAPITAL_CARATULA', 1,80044, NULL, NULL);			
			
	COMMIT;
	
END;
/