DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	UPDATE productos
	SET cactivo = 0
	WHERE cramo = 802
	AND sproduc NOT IN (80038, 80039, 80040, 80041, 80042, 80043, 80044, 8062, 8063, 8064);
	
	UPDATE titulopro
	SET ttitulo = 'RC Profesiones Médicas'
	WHERE cramo = 802
	AND cmodali = 1
	AND ctipseg = 2
	AND ccolect = 0;

	UPDATE titulopro
	SET ttitulo = 'RC Profesional Clínicas'
	WHERE cramo = 802
	AND cmodali = 1
	AND ctipseg = 3
	AND ccolect = 0;

	UPDATE titulopro
	SET ttitulo = 'RC Profesionales'
	WHERE cramo = 802
	AND cmodali = 1
	AND ctipseg = 4
	AND ccolect = 0;

	DELETE modalipro WHERE sproduc in (8062, 8063, 8064);

	INSERT INTO modalipro (sproduc, cmodali) VALUES (8062, 3);
	INSERT INTO modalipro (sproduc, cmodali) VALUES (8063, 3);
	INSERT INTO modalipro (sproduc, cmodali) VALUES (8064, 3);
	
	DELETE doc_docurequerida
	WHERE cdocume = 1233
	AND sproduc BETWEEN 80038 AND 80043;    
	
    COMMIT;
	
END;
/