DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE medcobpro WHERE cramo IN (801, 802);
	
	
	INSERT INTO medcobpro (cramo,cmodali,ctipseg,ccolect,ctipcob,diasnoti) VALUES (801,6, 1, 0,18,NULL);
	INSERT INTO medcobpro (cramo,cmodali,ctipseg,ccolect,ctipcob,diasnoti) VALUES (801,7, 1, 0,18,NULL);
	INSERT INTO medcobpro (cramo,cmodali,ctipseg,ccolect,ctipcob,diasnoti) VALUES (801,7, 2, 0,18,NULL);
	INSERT INTO medcobpro (cramo,cmodali,ctipseg,ccolect,ctipcob,diasnoti) VALUES (801,8, 1, 0,18,NULL);
	INSERT INTO medcobpro (cramo,cmodali,ctipseg,ccolect,ctipcob,diasnoti) VALUES (801,9, 1, 0,18,NULL);
	INSERT INTO medcobpro (cramo,cmodali,ctipseg,ccolect,ctipcob,diasnoti) VALUES (801,9, 2, 0,18,NULL);
	INSERT INTO medcobpro (cramo,cmodali,ctipseg,ccolect,ctipcob,diasnoti) VALUES (801,10, 1, 0,18,NULL);
	INSERT INTO medcobpro (cramo,cmodali,ctipseg,ccolect,ctipcob,diasnoti) VALUES (801,11, 1, 0,18,NULL);
	INSERT INTO medcobpro (cramo,cmodali,ctipseg,ccolect,ctipcob,diasnoti) VALUES (801,12, 1, 0,18,NULL);
	INSERT INTO medcobpro (cramo,cmodali,ctipseg,ccolect,ctipcob,diasnoti) VALUES (801,13, 1, 0,18,NULL);
	INSERT INTO medcobpro (cramo,cmodali,ctipseg,ccolect,ctipcob,diasnoti) VALUES (801,14, 1, 0,18,NULL);
	INSERT INTO medcobpro (cramo,cmodali,ctipseg,ccolect,ctipcob,diasnoti) VALUES (801,15, 1, 0,18,NULL);
	INSERT INTO medcobpro (cramo,cmodali,ctipseg,ccolect,ctipcob,diasnoti) VALUES (802,1, 2, 0,18,NULL);
	INSERT INTO medcobpro (cramo,cmodali,ctipseg,ccolect,ctipcob,diasnoti) VALUES (802,1, 3, 0,18,NULL);
	INSERT INTO medcobpro (cramo,cmodali,ctipseg,ccolect,ctipcob,diasnoti) VALUES (802,1, 4, 0,18,NULL);
	INSERT INTO medcobpro (cramo,cmodali,ctipseg,ccolect,ctipcob,diasnoti) VALUES (802,5, 1, 0,18,NULL);
	INSERT INTO medcobpro (cramo,cmodali,ctipseg,ccolect,ctipcob,diasnoti) VALUES (802,6, 1, 0,18,NULL);
	INSERT INTO medcobpro (cramo,cmodali,ctipseg,ccolect,ctipcob,diasnoti) VALUES (802,6, 2, 0,18,NULL);
	INSERT INTO medcobpro (cramo,cmodali,ctipseg,ccolect,ctipcob,diasnoti) VALUES (802,7, 1, 0,18,NULL);
	INSERT INTO medcobpro (cramo,cmodali,ctipseg,ccolect,ctipcob,diasnoti) VALUES (802,8, 1, 0,18,NULL);
	INSERT INTO medcobpro (cramo,cmodali,ctipseg,ccolect,ctipcob,diasnoti) VALUES (802,8, 2, 0,18,NULL);
	INSERT INTO medcobpro (cramo,cmodali,ctipseg,ccolect,ctipcob,diasnoti) VALUES (802,9, 1, 0,18,NULL);
	
	
	COMMIT;
	
END;
/