DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (8, '9908885', 'Fecha inicio');
	
	UPDATE axis_literales
	SET tlitera = 'La fecha de inicio de Vigencia de los amparos no puede ser anterior a la fecha de vigencia de la póliza'
	WHERE slitera = 89905672
	AND cidioma IN (2, 8);

	UPDATE axis_literales
	SET tlitera = 'La fecha fin de Vigencia de los amparos no puede ser anterior a la fecha de vigencia o mayor a la de vencimiento de la póliza'
	WHERE slitera = 89905735
	AND cidioma IN (2, 8);

	
	COMMIT;
	
END;
/