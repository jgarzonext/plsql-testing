DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE axis_literales WHERE slitera = 9001509;
	
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES(1, 9001509, 'Despeses d''expedició'); 
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES(2, 9001509, 'Gastos de Expedición'); 
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES(8, 9001509, 'Gastos de Expedición');
	
	DELETE axis_literales WHERE slitera = 9905744;
	
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES(1, 9905744, 'Data efecte endós'); 
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES(2, 9905744, 'Fecha efecto endoso'); 
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES(8, 9905744, 'Fecha efecto endoso');
	
	COMMIT;
	
END;
/