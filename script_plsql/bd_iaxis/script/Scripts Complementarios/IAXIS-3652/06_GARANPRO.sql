DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	UPDATE garanpro
	SET ctipgar = 2
	WHERE cramo = 801
	AND cgarant = 7001
	AND sproduc = 80012;	
	
	COMMIT;
	
END;
/