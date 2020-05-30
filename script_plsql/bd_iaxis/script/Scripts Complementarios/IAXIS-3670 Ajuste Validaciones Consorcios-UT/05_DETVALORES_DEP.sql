DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE detvalores_dep WHERE cvalor = 85 AND cvalordep = 8001073;
	
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,85,1,8001073,17);

	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,85,2,8001073,1);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,85,2,8001073,2);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,85,2,8001073,3);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,85,2,8001073,4);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,85,2,8001073,5);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,85,2,8001073,6);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,85,2,8001073,7);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,85,2,8001073,8);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,85,2,8001073,9);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,85,2,8001073,10);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,85,2,8001073,11);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,85,2,8001073,12);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,85,2,8001073,13);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,85,2,8001073,14);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,85,2,8001073,15);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,85,2,8001073,16);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,85,2,8001073,18);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,85,2,8001073,19);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,85,2,8001073,20);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,85,2,8001073,21);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,85,2,8001073,22);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,85,2,8001073,23);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,85,2,8001073,24);
	
	
	COMMIT;
	
END;
/