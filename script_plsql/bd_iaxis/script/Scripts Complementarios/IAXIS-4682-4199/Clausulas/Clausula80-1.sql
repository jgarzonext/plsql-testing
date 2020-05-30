DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE axis_literales WHERE slitera = 89907070;
    DELETE axis_codliterales WHERE slitera = 89907070;
    INSERT INTO axis_codliterales (slitera, clitera) VALUES (89907070, 3);
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (1,89907070,'El nombre màxim de beneficiaris addicionals ha estat superat.');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (2,89907070,'El número máximo de beneficiarios adicionales ha sido superado.');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (8,89907070,'El número máximo de beneficiarios adicionales ha sido superado.');
	
	
	COMMIT;
	
END;
/