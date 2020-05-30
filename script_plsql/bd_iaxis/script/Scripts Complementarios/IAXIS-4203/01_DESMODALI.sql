DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE desmodali WHERE cramo = 802;
	DELETE codmodali WHERE cramo = 802;
	
	INSERT INTO codmodali (cramo,cmodali) VALUES (802,1);
	INSERT INTO codmodali (cramo,cmodali) VALUES (802,2);
	INSERT INTO codmodali (cramo,cmodali) VALUES (802,3);

	INSERT INTO desmodali (cramo,cmodali,cidioma,tmodali) VALUES (802,1,8,'Derivado de Contrato');
	INSERT INTO desmodali (cramo,cmodali,cidioma,tmodali) VALUES (802,2,8,'General');
	INSERT INTO desmodali (cramo,cmodali,cidioma,tmodali) VALUES (802,3,8,'Profesionales');
	
	COMMIT;
	
END;
/