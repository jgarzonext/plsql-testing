DECLARE
	v_contexto NUMBER := 0;
	CURSOR C_GARANTIAS IS select DISTINCT cramo, cmodali, ctipseg, ccolect, SPRODUC, CGARANT, CACTIVI from garanpro where sproduc IN(80038,80039,80040,80044) and cgarant not in (7030,7050) ORDER BY SPRODUC;
	
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE pargaranpro WHERE cpargar = 'PRIMA_MANUAL' AND sproduc in (80038, 80039, 80040, 80044);
	
	FOR V IN  C_GARANTIAS LOOP
	
		INSERT INTO pargaranpro(cramo, cmodali, ctipseg, ccolect, cactivi, cgarant, cpargar, cvalpar, sproduc, tvalpar, fvalpar) 
				VALUES (V.CRAMO, V.CMODALI, V.CTIPSEG, V.CCOLECT, V.CACTIVI, V.CGARANT, 'PRIMA_MANUAL', 1,V.SPRODUC, NULL, NULL);

	END LOOP;
	
	COMMIT;
	
END;
/