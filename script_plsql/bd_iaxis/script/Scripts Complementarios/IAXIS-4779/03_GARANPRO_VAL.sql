DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	UPDATE garanpro_validacion
	SET tvalgar = 'pac_propio_garanproval_conf.f_val_capmax(7050, 100)'
	WHERE sproduc = 80044
	AND cgarant IN (7043, 7063);
	
	
	COMMIT;
	
END;
/