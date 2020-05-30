DECLARE
	v_contexto NUMBER := 0;
	
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
		
	DELETE bf_detnivel
	WHERE cgrup IN (SELECT codgrup FROM bf_progarangrup WHERE sproduc BETWEEN 80038 AND 80044)
	AND (cnivel BETWEEN 6 AND 21 OR cnivel IN (23, 24));
		
	UPDATE bf_detnivel
	SET norden = cnivel, cdefecto = 'N'
	WHERE cgrup IN (SELECT codgrup FROM bf_progarangrup WHERE sproduc BETWEEN 80038 AND 80044);

	UPDATE bf_detnivel
	SET cdefecto = 'S'
	WHERE cgrup IN (SELECT codgrup FROM bf_progarangrup WHERE sproduc BETWEEN 80038 AND 80044)
	and cnivel = 3;
	
	
    COMMIT;
	
END;
/
