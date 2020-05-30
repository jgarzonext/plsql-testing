DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE axis_literales WHERE slitera = 9908730 AND cidioma = 8;
	
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES(8, 9908730, 'Provisión Actual');
    
    UPDATE axis_literales
    SET tlitera = 'Fecha fin suspensión'
    WHERE cidioma = 8
    AND slitera = 9909832;
	
	
	COMMIT;
	
END;
/