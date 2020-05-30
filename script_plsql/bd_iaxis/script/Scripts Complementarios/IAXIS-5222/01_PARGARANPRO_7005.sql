DECLARE
	v_contexto NUMBER := 0;
	
	CURSOR garantias IS
		SELECT cramo, cmodali, ctipseg, ccolect, cactivi, cgarant, sproduc 
		FROM garanpro
		WHERE sproduc BETWEEN 80001 AND 80012
		AND cgarant = 7005
		ORDER BY sproduc, cactivi;
	
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE pargaranpro WHERE cpargar = 'TIEMPO_POSTCONTR_LEY' AND cgarant = 7005 AND sproduc BETWEEN 80001 AND 80012;
	DELETE desparam WHERE cparam = 'TIEMPO_POSTCONTR_LEY';
	DELETE codparam WHERE cparam = 'TIEMPO_POSTCONTR_LEY';
	
	INSERT INTO codparam(cparam, cutili, ctipo, cgrppar, cobliga, tdefecto) VALUES('TIEMPO_POSTCONTR_LEY', 3, 2, 'GEN', 0, '0');
	
	INSERT INTO desparam(cparam, cidioma, tparam) VALUES('TIEMPO_POSTCONTR_LEY', 1, 'Temps postcontractual per llei (mesos)');
	INSERT INTO desparam(cparam, cidioma, tparam) VALUES('TIEMPO_POSTCONTR_LEY', 2, 'Tiempo postcontratual por ley (meses)');
	INSERT INTO desparam(cparam, cidioma, tparam) VALUES('TIEMPO_POSTCONTR_LEY', 8, 'Tiempo postcontratual por ley (meses)');
	

	FOR gar IN garantias LOOP
	
		INSERT INTO pargaranpro(cramo, cmodali, ctipseg, ccolect, cactivi, cgarant, cpargar, cvalpar, sproduc, tvalpar, fvalpar) 
			VALUES (gar.cramo, gar.cmodali, gar.ctipseg, gar.ccolect, gar.cactivi, gar.cgarant, 'TIEMPO_POSTCONTR_LEY', 36, gar.sproduc, NULL, NULL);
	
	END LOOP;
	
	
	UPDATE pargaranpro
	SET cvalpar = 1
	where cgarant = 7005
	AND cpargar = 'EXCONTRACTUAL'
	and sproduc BETWEEN 80001 AND 80012;	
	
	
	COMMIT;
	
END;
/