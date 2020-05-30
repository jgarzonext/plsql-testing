DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	UPDATE cfg_form_property
	SET citem = 'NDIAS_SUSP'
	WHERE cform = 'AXISCTR069'
	AND citem = 'NDIAS';
	
	
	COMMIT;
	
END;
/