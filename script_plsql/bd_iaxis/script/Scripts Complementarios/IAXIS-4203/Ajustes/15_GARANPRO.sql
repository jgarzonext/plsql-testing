ALTER TABLE respuestas
	MODIFY trespue VARCHAR2(100);
/

DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	
	UPDATE garanpro
	SET ctipgar = 4
	WHERE sproduc = 80044
	AND cactivi = 4
	AND cgarant IN (7056, 7036);
	
	
	COMMIT;
	
END;
/