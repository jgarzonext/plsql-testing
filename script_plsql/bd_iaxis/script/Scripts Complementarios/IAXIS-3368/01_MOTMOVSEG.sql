DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	UPDATE motmovseg
	SET tmotmov = 'Alta de amparos', tsuplem = 'Alta de amparos'
	WHERE cidioma = 8 AND cmotmov = 237;
	
	COMMIT;
	
END;
/