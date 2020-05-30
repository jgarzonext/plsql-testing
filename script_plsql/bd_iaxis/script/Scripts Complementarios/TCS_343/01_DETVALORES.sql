DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE agr_marcas WHERE cempres = 24  AND cmarca = '0113';
	
	DELETE cfg_files WHERE cempres = 24  AND cproceso = 309;
	
	DELETE axis_literales WHERE slitera IN (89906214, 89906215);
	DELETE axis_codliterales WHERE slitera IN (89906214, 89906215);

	INSERT INTO axis_codliterales (slitera, clitera) VALUES (89906214, 3);
	INSERT INTO axis_codliterales (slitera, clitera) VALUES (89906215, 3);

	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (1, 89906214, 'Llista restringida per Llei d''insolvència');  -- Carga de archivos
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (2, 89906214, 'Lista restringida por Ley de insolvencia');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (8, 89906214, 'Lista restringida por Ley de insolvencia');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (1, 89906215, 'Monitorització anàlisi de clients');  -- Marcas
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (2, 89906215, 'Monitoreo analisis de clientes');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (8, 89906215, 'Monitoreo analisis de clientes');


	DELETE detvalores where cvalor = 800048 AND catribu = 62;
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (800048, 1, 62, 'Llei d''insolvència');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (800048, 2, 62, 'Ley de insolvencia');
	INSERT INTO detvalores (cvalor, cidioma, catribu, tatribu) VALUES (800048, 8, 62, 'Ley de insolvencia');
    
    COMMIT;

END;