DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE detvalores_dep WHERE cvalordep = 800109 AND cvalor BETWEEN 80038 and 80044;
	
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,80038,1,800109,0);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,80038,1,800109,1);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,80039,1,800109,0);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,80039,1,800109,1);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,80040,1,800109,0);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,80040,1,800109,1);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,80041,1,800109,8);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,80042,1,800109,8);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,80043,1,800109,8);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,80044,1,800109,0);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,80044,1,800109,1);
	
	
	COMMIT;
	
END;
/