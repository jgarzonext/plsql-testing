DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE axis_literales WHERE slitera = 89907071;
    DELETE axis_codliterales WHERE slitera = 89907071;
    INSERT INTO axis_codliterales (slitera, clitera) VALUES (89907071, 3);
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (1,89907071,'Tipus d''comissió no permès per negoci amb corretatge.');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (2,89907071,'Tipo de comisión no permitido para negocio con corretaje.');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (8,89907071,'Tipo de comisión no permitido para negocio con corretaje.');
	
	
	COMMIT;
	
END;
/