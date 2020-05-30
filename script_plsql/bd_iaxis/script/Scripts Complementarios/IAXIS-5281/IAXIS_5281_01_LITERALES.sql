DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE axis_literales WHERE slitera = 89907059;
	DELETE axis_codliterales WHERE slitera = 89907059;
	
	
	INSERT INTO axis_codliterales(slitera, clitera) VALUES (89907059, 6);
	
	INSERT INTO axis_literales(cidioma, slitera, tlitera) VALUES (1, 89907059, 'Beneficiari "#1#" obligatori. No es pot eliminar.');
	INSERT INTO axis_literales(cidioma, slitera, tlitera) VALUES (2, 89907059, 'Beneficiario "#1#" obligatorio. No se puede eliminar.');
	INSERT INTO axis_literales(cidioma, slitera, tlitera) VALUES (8, 89907059, 'Beneficiario "#1#" obligatorio. No se puede eliminar.');
	
	
	COMMIT;
	
END;
/