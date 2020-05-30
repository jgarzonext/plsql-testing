DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE activiprod WHERE cramo = 802;
	DELETE activisegu WHERE cramo = 802;
	
    INSERT INTO codiactseg (cramo, cactivi, cclarie) VALUES (802, 1, 0);
    
	INSERT INTO activisegu (cidioma, cactivi, cramo, ttitulo, tactivi) VALUES (1, 0, 802, 'Estatal', 'R.C. DERIVAT DE CONTRACTE ESTATAL');
	INSERT INTO activisegu (cidioma, cactivi, cramo, ttitulo, tactivi) VALUES (2, 0, 802, 'Estatal', 'R.C. DERIVADO DE CONTRATO ESTATAL');
	INSERT INTO activisegu (cidioma, cactivi, cramo, ttitulo, tactivi) VALUES (8, 0, 802, 'Estatal', 'R.C. DERIVADO DE CONTRATO ESTATAL');
	INSERT INTO activisegu (cidioma, cactivi, cramo, ttitulo, tactivi) VALUES (1, 1, 802, 'Particular', 'R.C. DERIVAT DE CONTRACTE PARTICULAR');
	INSERT INTO activisegu (cidioma, cactivi, cramo, ttitulo, tactivi) VALUES (2, 1, 802, 'Particular', 'R.C. DERIVADO DE CONTRATO PARTICULAR');
	INSERT INTO activisegu (cidioma, cactivi, cramo, ttitulo, tactivi) VALUES (8, 1, 802, 'Particular', 'R.C. DERIVADO DE CONTRATO PARTICULAR');
	
	COMMIT;
	
END;
/