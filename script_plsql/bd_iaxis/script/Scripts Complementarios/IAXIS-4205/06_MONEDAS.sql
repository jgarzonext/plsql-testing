DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	
	UPDATE eco_codmonedas
	SET patron = '###,###,##0'
	WHERE cmoneda = 'EUR';
	
	UPDATE pregunpro
	SET ctarpol = 0, crecarg = 0, cmodo = 'N'
	WHERE sproduc = 80044
	AND cpregun = 2876;
	
	
	COMMIT;
	
END;
/