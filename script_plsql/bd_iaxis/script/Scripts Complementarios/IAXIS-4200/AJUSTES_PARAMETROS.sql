DECLARE
	v_contexto NUMBER := 0;
	
	CURSOR garantias IS
		SELECT cramo, cmodali, ctipseg, ccolect, cactivi, cgarant, sproduc 
		FROM garanpro
		WHERE sproduc IN (80041, 80042, 80043)
		AND cgarant NOT IN (7050)
		ORDER BY sproduc, cactivi, norden;
	
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE pargaranpro WHERE cpargar = 'PRIMA_MANUAL_0' AND cgarant NOT IN (7050) AND sproduc BETWEEN 80041 AND 80043;
	DELETE desparam WHERE cparam = 'PRIMA_MANUAL_0';
	DELETE codparam WHERE cparam = 'PRIMA_MANUAL_0';
	
	INSERT INTO codparam(cparam, cutili, ctipo, cgrppar, cobliga, tdefecto) VALUES('PRIMA_MANUAL_0', 3, 2, 'GEN', 0, '0');
	
	INSERT INTO desparam(cparam, cidioma, tparam) VALUES('PRIMA_MANUAL_0', 1, 'Garantia permet prima manual = 0');
	INSERT INTO desparam(cparam, cidioma, tparam) VALUES('PRIMA_MANUAL_0', 2, 'Garantía permite prima manual = 0');
	INSERT INTO desparam(cparam, cidioma, tparam) VALUES('PRIMA_MANUAL_0', 8, 'Garantía permite prima manual = 0');
	

	FOR gar IN garantias LOOP
	
		INSERT INTO pargaranpro(cramo, cmodali, ctipseg, ccolect, cactivi, cgarant, cpargar, cvalpar, sproduc, tvalpar, fvalpar) 
			VALUES (gar.cramo, gar.cmodali, gar.ctipseg, gar.ccolect, gar.cactivi, gar.cgarant, 'PRIMA_MANUAL_0', 1, gar.sproduc, NULL, NULL);
	
	END LOOP;
	
	
	UPDATE garanpro
	SET cimpips = 0
	WHERE sproduc IN (80041, 80042, 80043);	
	
	
	COMMIT;
	
END;
/