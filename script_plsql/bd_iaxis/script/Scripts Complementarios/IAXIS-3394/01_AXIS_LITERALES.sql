DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE axis_literales WHERE slitera = 89906264;
	DELETE axis_codliterales WHERE slitera = 89906264;
	
	INSERT INTO axis_codliterales (slitera, clitera) VALUES (89906264, 3);
	
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES(1, 89906264, 'Data efecte Trasllat de vigència'); 
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES(2, 89906264, 'Fecha efecto Traslado de vigencia'); 
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES(8, 89906264, 'Fecha efecto Traslado de vigencia');
	
	DELETE axis_literales WHERE slitera = 9908928 AND cidioma = 8;
	
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES(8, 9908928, 'Núm. Ficha Bureau');
	
		
	COMMIT;
	
END;
/