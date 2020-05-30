DECLARE
	v_contexto NUMBER := 0;
	
	CURSOR garantias IS
		SELECT cramo, cmodali, ctipseg, ccolect, cactivi, cgarant, sproduc 
		FROM garanpro
		WHERE cgarant IN (7051, 7052, 7062, 7031, 7032, 7042)
		AND sproduc BETWEEN 80038 AND 80044
		ORDER BY sproduc, cactivi, norden;
	
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE pargaranpro 
	WHERE cpargar = 'CONTRATADA_DEFECTO' 
	AND cgarant IN (7051, 7052, 7062, 7031, 7032, 7042) 
	AND sproduc BETWEEN 8008 AND 80044;
	
	
	FOR gar IN garantias LOOP
	
		INSERT INTO pargaranpro(cramo, cmodali, ctipseg, ccolect, cactivi, cgarant, cpargar, cvalpar, sproduc, tvalpar, fvalpar) 
			VALUES (gar.cramo, gar.cmodali, gar.ctipseg, gar.ccolect, gar.cactivi, gar.cgarant, 'CONTRATADA_DEFECTO', 1, gar.sproduc, NULL, NULL);
	
	END LOOP;
	
	
	COMMIT;
	
END;
/