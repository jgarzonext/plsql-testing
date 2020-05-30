DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE modalipro WHERE sproduc = 80012 AND cmodali = 1;
    
    INSERT INTO modalipro (sproduc, cmodali) VALUES (80012,1);
	
	
	COMMIT;
	
END;
/