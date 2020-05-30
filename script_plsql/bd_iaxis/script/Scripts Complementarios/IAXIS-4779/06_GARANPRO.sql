DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	
	UPDATE garanpro
	SET ctipgar = 3
	WHERE sproduc = 80044
	AND ctipgar != 2
	AND cgardep IS NULL;

	UPDATE pargaranpro
	SET cvalpar = 0
	WHERE sproduc = 80044
	AND cactivi != 2
	AND cpargar = 'CONTRATADA_DEFECTO';
	
	UPDATE garanpro
	SET ctipgar = 3
	WHERE sproduc = 80044
	AND cactivi = 3
	AND cgarant = 7056;

	UPDATE garanpro
	SET ctipgar = 4
	WHERE sproduc = 80044
	AND cactivi = 3
	AND cgarant = 7036;
	
	
	DELETE pargaranpro WHERE sproduc = 80044 AND cactivi = 3 AND cpargar = 'CONTRATADA_DEFECTO' AND cgarant IN (7036, 7056);
	
	INSERT INTO pargaranpro(cramo, cmodali, ctipseg, ccolect, cactivi, cgarant, cpargar, cvalpar, sproduc) VALUES (802, 9, 1, 0, 3, 7056, 'CONTRATADA_DEFECTO', 1, 80044);
	INSERT INTO pargaranpro(cramo, cmodali, ctipseg, ccolect, cactivi, cgarant, cpargar, cvalpar, sproduc) VALUES (802, 9, 1, 0, 3, 7036, 'CONTRATADA_DEFECTO', 1, 80044);	
	
	
    COMMIT;
	
END;
/