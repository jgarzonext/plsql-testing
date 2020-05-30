DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
    
    DELETE cfg_files WHERE cproceso IN (310, 311, 312);
	
	INSERT INTO cfg_files (cempres, cproceso, tdestino, tdestino_bbdd, cdescrip, tproceso, tpantalla, cactivo, ttabla, cpara_error, cborra_fich, cbusca_host, cformato_decimales, ctablas, cjob, cdebug, nregmasivo) 
	VALUES (24, 310, '/app/iaxis12c/tabext', 'TABEXT', 89907072, 'PAC_CARGAS_CONF.f_lre_carga_gruposeconomicos', 'AXISINT001', 1, 'INT_CARGA_LRE', 0, 0, 1, 0, 'POL', null, 99, 1);
	--INSERT INTO cfg_files (cempres, cproceso, tdestino, tdestino_bbdd, cdescrip, tproceso, tpantalla, cactivo, ttabla, cpara_error, cborra_fich, cbusca_host, cformato_decimales, ctablas, cjob, cdebug, nregmasivo) 
	--VALUES (24, 311, '/app/iaxis12c/tabext', 'TABEXT', 89907073, 'PAC_CARGAS_CONF.f_lre_carga_grpecoalerta', 'AXISINT001', 1, 'INT_CARGA_LRE', 0, 0, 1, 0, 'POL', null, 99, 1);
	--INSERT INTO cfg_files (cempres, cproceso, tdestino, tdestino_bbdd, cdescrip, tproceso, tpantalla, cactivo, ttabla, cpara_error, cborra_fich, cbusca_host, cformato_decimales, ctablas, cjob, cdebug, nregmasivo) 
	--VALUES (24, 312, '/app/iaxis12c/tabext', 'TABEXT', 89907074, 'PAC_CARGAS_CONF.f_lre_carga_grpecoalerta', 'AXISINT001', 1, 'INT_CARGA_LRE', 0, 0, 1, 0, 'POL', null, 99, 1);
    
    COMMIT;

END;

