DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	UPDATE agr_marcas 
	SET caacion = 1
	WHERE cmarca = '0200';

	COMMIT;
	
END;
/