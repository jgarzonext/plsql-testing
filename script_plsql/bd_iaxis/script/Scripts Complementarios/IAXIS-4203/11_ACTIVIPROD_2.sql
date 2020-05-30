DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	UPDATE activiprod
	SET cgrupo = 'RE'
	WHERE sproduc = 80038
	AND cactivi = 0;
	
	UPDATE activiprod
	SET cgrupo = 'RO'
	WHERE sproduc = 80038
	AND cactivi = 1;

	UPDATE activiprod
	SET cgrupo = 'OX'
	WHERE sproduc IN (80039, 80040)
	AND cactivi = 0;
	
	UPDATE activiprod
	SET cgrupo = 'RX'
	WHERE sproduc IN (80039, 80040)
	AND cactivi = 1;
	
	
	COMMIT;
	
END;
/