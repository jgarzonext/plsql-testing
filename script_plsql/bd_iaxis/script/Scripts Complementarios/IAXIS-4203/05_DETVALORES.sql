DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,80038,1,800109,0);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,80038,1,800109,1);
	
	
	COMMIT;
	
END;
/