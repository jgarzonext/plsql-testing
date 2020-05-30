DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	UPDATE pregunpro
	SET cresdef = 3
	WHERE cpregun = 2876
	AND cramo = 801
	AND sproduc = 80012;	
	
	COMMIT;
	
END;
/