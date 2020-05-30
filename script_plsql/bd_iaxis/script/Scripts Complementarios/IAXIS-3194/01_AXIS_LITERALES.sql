DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE axis_literales WHERE slitera IN (89906247);
	DELETE axis_codliterales WHERE slitera IN (89906247);

	INSERT INTO axis_codliterales (slitera, clitera) VALUES (89906247, 3);

	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (1, 89906247, 'Producte (Activitat)');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (2, 89906247, 'Producto (Actividad)');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (8, 89906247, 'Producto (Actividad)');
    
    COMMIT;
	
END;
/