DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE axis_literales WHERE slitera = 89908018;
	DELETE axis_codliterales WHERE slitera = 89908018;
	
	INSERT INTO axis_codliterales (slitera, clitera) VALUES (89908018, 3);
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (1, 89908018, 'El consorci ha de tenir com a mínim una agrupació');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (2, 89908018, 'El consorcio debe tener como mínimo una agrupación');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (8, 89908018, 'El consorcio debe tener como mínimo una agrupación');
	
	UPDATE axis_literales
	SET tlitera = 'La suma de porcentajes de participación de la agrupación #1# del consorcio debe ser del 100%'
	WHERE slitera = 89906267;
	
	
	COMMIT;
	
END;
/