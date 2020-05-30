DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	UPDATE cfg_form_property
	SET cvalue = 0
	WHERE cform = 'AXISCTR004'
	AND citem IN ('FEFECTO', 'FVENCIM', 'FEFEPLAZO', 'FVENCPLAZO')
	AND cprpty = 2
	AND cidcfg IN (SELECT DISTINCT cidcfg FROM cfg_form
	WHERE cmodo = 'SUPLEMENTO_918'
	AND cform = 'AXISCTR004'
	AND sproduc BETWEEN 80001 AND 80011);
	
	DELETE cfg_form_property
	WHERE cform = 'AXISCTR207'
	AND citem = 'DSP_GARANTIAS'
	AND cprpty = 2
	AND cidcfg = 918001;
	
	DELETE cfg_form_property
	WHERE cform = 'AXISCTR207'
	AND citem = 'FINIVIG'
	AND cprpty = 2
	AND cidcfg = 918001;

	DELETE cfg_form_property
	WHERE cform = 'AXISCTR207'
	AND citem = 'FFINVIG'
	AND cprpty = 2
	AND cidcfg = 918001;

	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24, 918001, 'AXISCTR207', 'DSP_GARANTIAS', 2, 0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24, 918001, 'AXISCTR207', 'FINIVIG', 2, 0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24, 918001, 'AXISCTR207', 'FFINVIG', 2, 0);
    	
	
	COMMIT;
	
END;
/