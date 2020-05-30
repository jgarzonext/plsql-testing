DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE axis_literales WHERE slitera IN (89907061, 89907062, 89907063);
	DELETE axis_codliterales WHERE slitera IN (89907061, 89907062, 89907063);
	
	
	INSERT INTO axis_codliterales(slitera, clitera) VALUES (89907061, 3);
	INSERT INTO axis_codliterales(slitera, clitera) VALUES (89907062, 3);
	INSERT INTO axis_codliterales(slitera, clitera) VALUES (89907063, 3);
	
	
	INSERT INTO axis_literales(cidioma, slitera, tlitera) VALUES (1, 89907061, 'Preguntes Endossos');
	INSERT INTO axis_literales(cidioma, slitera, tlitera) VALUES (2, 89907061, 'Preguntas Endosos');
	INSERT INTO axis_literales(cidioma, slitera, tlitera) VALUES (8, 89907061, 'Preguntas Endosos');
		
	INSERT INTO axis_literales(cidioma, slitera, tlitera) VALUES (1, 89907062, 'Ha de seleccionar un valor a la pregunta 9802-Certificat base a afectar');
	INSERT INTO axis_literales(cidioma, slitera, tlitera) VALUES (2, 89907062, 'Debe seleccionar un valor en la pregunta 9802-Certificado base a afectar');
	INSERT INTO axis_literales(cidioma, slitera, tlitera) VALUES (8, 89907062, 'Debe seleccionar un valor en la pregunta 9802-Certificado base a afectar');

	INSERT INTO axis_literales(cidioma, slitera, tlitera) VALUES (1, 89907063, 'El valor negatiu generat és major que el valor del certificat a afectar');
	INSERT INTO axis_literales(cidioma, slitera, tlitera) VALUES (2, 89907063, 'El valor negativo generado es mayor que el valor del certificado a afectar');
	INSERT INTO axis_literales(cidioma, slitera, tlitera) VALUES (8, 89907063, 'El valor negativo generado es mayor que el valor del certificado a afectar');

	
	COMMIT;
	
END;
/