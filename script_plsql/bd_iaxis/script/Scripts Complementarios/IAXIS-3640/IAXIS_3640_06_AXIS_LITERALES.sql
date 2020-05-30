DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE axis_literales WHERE slitera = 89908013;
	DELETE axis_codliterales WHERE slitera = 89908013;
	
	INSERT INTO axis_codliterales (slitera, clitera) VALUES (89908013, 3);
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (1, 89908013, 'No es permet anul·lar la pòlissa. Encara té endossos per anul·lar.');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (2, 89908013, 'No se permite anular la póliza. Aún tiene endosos por anular.');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (8, 89908013, 'No se permite anular la póliza. Aún tiene endosos por anular.');	
	
	
   COMMIT;
	
END;
/