DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	INSERT INTO cfg_files (cempres, cproceso, tdestino, tdestino_bbdd, cdescrip, tproceso, tpantalla, cactivo, ttabla, cpara_error, cborra_fich, cbusca_host, cformato_decimales, ctablas, cjob, cdebug, nregmasivo) 
	VALUES (24, 309, '/app/iaxis12c/tabext', 'TABEXT', 89906214, 'PAC_CARGAS_CONF.f_lre_carga_insolvencia', 'AXISINT001', 1, 'INT_CARGA_LRE', 0, 0, 1, 0, 'POL', null, 99, 1);
    
    COMMIT;

END;

