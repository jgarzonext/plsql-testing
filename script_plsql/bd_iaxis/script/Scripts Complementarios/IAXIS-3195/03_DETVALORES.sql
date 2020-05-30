DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	UPDATE detvalores
	SET tatribu = 'Cotización'
	WHERE cvalor = 251
	AND cidioma = 8
	AND catribu = 3;

	UPDATE detvalores
	SET tatribu = 'Cot. Pdte. Autor.'
	WHERE cvalor = 251
	AND cidioma = 8
	AND catribu = 4;

	UPDATE detvalores
	SET tatribu = 'Cot. Anulada'
	WHERE cvalor = 251
	AND cidioma = 8
	AND catribu = 5;

	UPDATE detvalores
	SET tatribu = 'Cot. No Aceptada'
	WHERE cvalor = 251
	AND cidioma = 8
	AND catribu = 6;

	UPDATE detvalores
	SET tatribu = 'Cot. Guardada'
	WHERE cvalor = 251
	AND cidioma = 8
	AND catribu = 7;

	UPDATE detvalores
	SET tatribu = 'Cot. Endoso'
	WHERE cvalor = 251
	AND cidioma = 8
	AND catribu = 10;

	UPDATE detvalores
	SET tatribu = 'Cot. Endoso Guardada'
	WHERE cvalor = 251
	AND cidioma = 8
	AND catribu = 11;

	UPDATE detvalores
	SET tatribu = 'Cot. Endoso Pdte. Autor.'
	WHERE cvalor = 251
	AND cidioma = 8
	AND catribu = 12;

	COMMIT;
	
END;
/