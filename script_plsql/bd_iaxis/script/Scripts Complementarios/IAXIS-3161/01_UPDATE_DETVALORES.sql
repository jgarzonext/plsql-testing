DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	UPDATE detvalores 
	SET tatribu = 'Cotización'
	WHERE cvalor = 61
	AND cidioma = 8
	AND catribu = 4;

	UPDATE detvalores
	SET tatribu = 'Cot. Endoso'
	WHERE cvalor = 61
	AND cidioma = 8
	AND catribu = 5;

	UPDATE detvalores
	SET tatribu = 'Guardada'
	WHERE cvalor = 66
	AND cidioma = 8
	AND catribu = 1;

	UPDATE detvalores
	SET tatribu = 'No aceptada'
	WHERE cvalor = 66
	AND cidioma = 8
	AND catribu = 3;
	
	COMMIT;
	
END;
/