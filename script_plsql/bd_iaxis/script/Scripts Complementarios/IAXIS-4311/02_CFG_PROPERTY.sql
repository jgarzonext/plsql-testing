DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	UPDATE cfg_form_property
	SET cprpty = 2,cvalue = 0
	WHERE cform = 'AXISCTR207'
	AND citem IN ('CCOBPRIMA', 'FFINVIG', 'FINIVIG')
	AND cidcfg IN (971001);
    
	UPDATE cfg_form_property
	SET cvalue = 0
	WHERE cform = 'AXISCTR207'
	AND citem IN ('DSP_PREGUNTASDESPESES', 'DSP_PREGUNTASQUEST')
    AND cprpty = 1
	AND cidcfg IN (971001);


	DELETE cfg_form_property WHERE cidcfg = 971001 AND cform='AXISCTR207' AND citem='DSP_PREGUNTASRIESGO' AND cprpty=1;
	DELETE cfg_form_property WHERE cidcfg = 971001 AND cform='AXISCTR207' AND citem='PREGGARANT' AND cprpty=1;
	DELETE cfg_form_property WHERE cidcfg = 971001 AND cform='AXISCTR207' AND citem='DETGARANT' AND cprpty=1;
	DELETE cfg_form_property WHERE cidcfg = 971001 AND cform='AXISCTR207' AND citem='selectedGarantia' AND cprpty=1;
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24, 971001, 'AXISCTR207', 'DSP_PREGUNTASRIESGO', 1, 0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24, 971001, 'AXISCTR207', 'PREGGARANT', 1, 0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24, 971001, 'AXISCTR207', 'DETGARANT', 1, 0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24, 971001, 'AXISCTR207', 'selectedGarantia', 1, 0);
	
	COMMIT;
	
END;
/