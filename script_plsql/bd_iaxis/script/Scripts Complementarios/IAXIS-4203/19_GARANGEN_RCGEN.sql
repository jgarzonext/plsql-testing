DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));

	UPDATE garangen
	SET tgarant = 'Gastos Judiciales de Defensa / Evento', trotgar = 'Gastos Judiciales de Defensa / Evento'
	WHERE cgarant = 7042;

	UPDATE garangen
	SET tgarant = 'RC Exportaciones / Evento', trotgar = 'RC Exportaciones / Evento'
	WHERE cgarant = 7044;

	UPDATE garangen
	SET tgarant = 'RC Unión y Mezcla / Evento', trotgar = 'RC Unión y Mezcla / Evento'
	WHERE cgarant = 7045;

	UPDATE garangen
	SET tgarant = 'RC Transformación / Evento', trotgar = 'RC Transformación / Evento'
	WHERE cgarant = 7046;

	
	UPDATE garangen
	SET tgarant = 'Gastos Judiciales de Defensa / Vigencia', trotgar = 'Gastos Judiciales de Defensa / Vigencia'
	WHERE cgarant = 7062;

	UPDATE garangen
	SET tgarant = 'RC Exportaciones / Vigencia', trotgar = 'RC Exportaciones / Vigencia'
	WHERE cgarant = 7064;

	UPDATE garangen
	SET tgarant = 'RC Unión y Mezcla / Vigencia', trotgar = 'RC Unión y Mezcla / Vigencia'
	WHERE cgarant = 7065;

	UPDATE garangen
	SET tgarant = 'RC Transformación / Vigencia', trotgar = 'RC Transformación / Vigencia'
	WHERE cgarant = 7066;


	COMMIT;
	
END;
/