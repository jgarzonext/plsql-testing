DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));

	DELETE FROM cfg_tiposbajas
	WHERE (sproduc > 80000 or sproduc in (8062, 8063))
	AND ctipbaja != 1;
	
	
   COMMIT;
	
END;
/