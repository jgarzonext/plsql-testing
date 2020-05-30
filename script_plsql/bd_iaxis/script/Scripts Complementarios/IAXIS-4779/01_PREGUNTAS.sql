DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	UPDATE pregunpro
	SET crecarg = 1
	WHERE sproduc = 80044
	AND  cpregun = 2876;
	
	UPDATE pregunprogaran
	SET cresdef = 0.20, cpretip = 1, tprefor = ''
	WHERE sproduc = 80044
	AND cpregun = 8001;
	
	
	COMMIT;
	
END;
/