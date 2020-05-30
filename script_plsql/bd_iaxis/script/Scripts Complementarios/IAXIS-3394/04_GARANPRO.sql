DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	
	UPDATE garanpro
	SET CTIPCAP = 3
	WHERE sproduc > 80000 
	AND ctipcap = 5;
	
	
	COMMIT;
	
END;
/