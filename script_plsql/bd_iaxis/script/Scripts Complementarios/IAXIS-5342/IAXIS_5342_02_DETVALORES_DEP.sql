DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE detvalores_dep WHERE cvalordep = 74 AND cvalor IN (8062, 8063, 8064, 80001, 80002, 80003, 80004, 80005, 80006, 80007, 80008, 80009, 80010, 80011, 80012, 80038, 80039, 80040, 80041, 80042, 80043, 80044);
	
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,80001,1,74,0);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,80001,1,74,1);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,80002,1,74,0);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,80002,1,74,1);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,80003,1,74,0);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,80003,1,74,1);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,80004,1,74,0);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,80004,1,74,1);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,80005,1,74,0);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,80005,1,74,1);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,80006,1,74,0);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,80006,1,74,1);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,80007,1,74,0);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,80007,1,74,1);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,80008,1,74,0);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,80008,1,74,1);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,80009,1,74,0);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,80009,1,74,1);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,80010,1,74,0);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,80010,1,74,1);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,80011,1,74,0);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,80011,1,74,1);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,80012,1,74,0);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,80012,1,74,1);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,80038,1,74,0);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,80038,1,74,1);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,80039,1,74,0);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,80039,1,74,1);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,80040,1,74,0);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,80040,1,74,1);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,80041,1,74,0);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,80041,1,74,1);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,80042,1,74,0);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,80042,1,74,1);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,80043,1,74,0);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,80043,1,74,1);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,80044,1,74,0);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,80044,1,74,1);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,8062,1,74,0);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,8062,1,74,1);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,8063,1,74,0);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,8063,1,74,1);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,8064,1,74,0);
	INSERT INTO detvalores_dep (cempres,cvalor,catribu,cvalordep,catribudep) VALUES (24,8064,1,74,1);
	
	
	COMMIT;
	
END;
/