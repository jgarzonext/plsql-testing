DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE modalipro WHERE sproduc IN (8038, 8046);
	
	
	COMMIT;
	
END;
/