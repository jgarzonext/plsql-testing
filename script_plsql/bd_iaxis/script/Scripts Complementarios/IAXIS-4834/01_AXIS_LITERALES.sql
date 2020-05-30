DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	
	DELETE axis_literales WHERE slitera IN (89907048, 89907049);
	DELETE axis_codliterales WHERE slitera IN (89907048, 89907049);

	INSERT INTO axis_codliterales(slitera, clitera) VALUES (89907048, 5);
	INSERT INTO axis_codliterales(slitera, clitera) VALUES (89907049, 5);

	INSERT INTO axis_literales(cidioma, slitera, tlitera) VALUES (1, 89907048, 'Cliente con situación financiera Deteriorada');
	INSERT INTO axis_literales(cidioma, slitera, tlitera) VALUES (2, 89907048, 'Cliente con situación financiera Deteriorada');
	INSERT INTO axis_literales(cidioma, slitera, tlitera) VALUES (8, 89907048, 'Cliente con situación financiera Deteriorada');
	INSERT INTO axis_literales(cidioma, slitera, tlitera) VALUES (1, 89907049, 'Cliente pertenece a Grupo Económico');
	INSERT INTO axis_literales(cidioma, slitera, tlitera) VALUES (2, 89907049, 'Cliente pertenece a Grupo Económico');
	INSERT INTO axis_literales(cidioma, slitera, tlitera) VALUES (8, 89907049, 'Cliente pertenece a Grupo Económico');
	
	
	COMMIT;
	
END;
/