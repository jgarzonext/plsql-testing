DECLARE
	
	v_contexto NUMBER := 0;
		
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	UPDATE codimotmov
	SET cgenrec = 0
	WHERE cmotmov IN (828, 230, 666);	
	
	
	COMMIT;
	
END;
/