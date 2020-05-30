DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	
	DELETE cfg_form WHERE cmodo = 'SUPLEMENTO_918' AND cform IN ('AXISCTR004', 'AXISCTR207') AND sproduc IN (80008, 80038, 80039, 80040, 80041, 80042, 80043, 80044);
	
	
	INSERT INTO cfg_form(CEMPRES, cform, cmodo, CCFGFORM, sproduc, cidcfg) VALUES (24, 'AXISCTR004', 'SUPLEMENTO_918', 'CFG_CENTRAL', 80008, 918005);
	INSERT INTO cfg_form(CEMPRES, cform, cmodo, CCFGFORM, sproduc, cidcfg) VALUES (24, 'AXISCTR004', 'SUPLEMENTO_918', 'CFG_CENTRAL', 80038, 918005);
	INSERT INTO cfg_form(CEMPRES, cform, cmodo, CCFGFORM, sproduc, cidcfg) VALUES (24, 'AXISCTR207', 'SUPLEMENTO_918', 'CFG_CENTRAL', 80038, 918001);
	INSERT INTO cfg_form(CEMPRES, cform, cmodo, CCFGFORM, sproduc, cidcfg) VALUES (24, 'AXISCTR004', 'SUPLEMENTO_918', 'CFG_CENTRAL', 80039, 918005);
	INSERT INTO cfg_form(CEMPRES, cform, cmodo, CCFGFORM, sproduc, cidcfg) VALUES (24, 'AXISCTR207', 'SUPLEMENTO_918', 'CFG_CENTRAL', 80039, 918001);
	INSERT INTO cfg_form(CEMPRES, cform, cmodo, CCFGFORM, sproduc, cidcfg) VALUES (24, 'AXISCTR004', 'SUPLEMENTO_918', 'CFG_CENTRAL', 80040, 918005);
	INSERT INTO cfg_form(CEMPRES, cform, cmodo, CCFGFORM, sproduc, cidcfg) VALUES (24, 'AXISCTR207', 'SUPLEMENTO_918', 'CFG_CENTRAL', 80040, 918001);
	INSERT INTO cfg_form(CEMPRES, cform, cmodo, CCFGFORM, sproduc, cidcfg) VALUES (24, 'AXISCTR004', 'SUPLEMENTO_918', 'CFG_CENTRAL', 80041, 918005);
	INSERT INTO cfg_form(CEMPRES, cform, cmodo, CCFGFORM, sproduc, cidcfg) VALUES (24, 'AXISCTR207', 'SUPLEMENTO_918', 'CFG_CENTRAL', 80041, 918001);
	INSERT INTO cfg_form(CEMPRES, cform, cmodo, CCFGFORM, sproduc, cidcfg) VALUES (24, 'AXISCTR004', 'SUPLEMENTO_918', 'CFG_CENTRAL', 80042, 918005);
	INSERT INTO cfg_form(CEMPRES, cform, cmodo, CCFGFORM, sproduc, cidcfg) VALUES (24, 'AXISCTR207', 'SUPLEMENTO_918', 'CFG_CENTRAL', 80042, 918001);
	INSERT INTO cfg_form(CEMPRES, cform, cmodo, CCFGFORM, sproduc, cidcfg) VALUES (24, 'AXISCTR004', 'SUPLEMENTO_918', 'CFG_CENTRAL', 80043, 918005);
	INSERT INTO cfg_form(CEMPRES, cform, cmodo, CCFGFORM, sproduc, cidcfg) VALUES (24, 'AXISCTR207', 'SUPLEMENTO_918', 'CFG_CENTRAL', 80043, 918001);
	INSERT INTO cfg_form(CEMPRES, cform, cmodo, CCFGFORM, sproduc, cidcfg) VALUES (24, 'AXISCTR004', 'SUPLEMENTO_918', 'CFG_CENTRAL', 80044, 918005);
	INSERT INTO cfg_form(CEMPRES, cform, cmodo, CCFGFORM, sproduc, cidcfg) VALUES (24, 'AXISCTR207', 'SUPLEMENTO_918', 'CFG_CENTRAL', 80044, 918001);
	
	
	UPDATE cfg_form_property
	SET cprpty = 2,cvalue = 0
	WHERE cform = 'AXISCTR207'
	AND citem IN ('CCOBPRIMA', 'FFINVIG', 'FINIVIG')
	AND cidcfg IN (918001);
    
	UPDATE cfg_form_property
	SET cvalue = 0
	WHERE cform = 'AXISCTR207'
	AND citem IN ('DSP_PREGUNTASDESPESES', 'DSP_PREGUNTASQUEST')
    AND cprpty = 1
	AND cidcfg IN (918001);
	
	
	DELETE cfg_form_property WHERE cidcfg = 918001 AND cform='AXISCTR207' AND citem='DSP_PREGUNTASRIESGO' AND cprpty=1;
	DELETE cfg_form_property WHERE cidcfg = 918001 AND cform='AXISCTR207' AND citem='PREGGARANT' AND cprpty=1;
	DELETE cfg_form_property WHERE cidcfg = 918001 AND cform='AXISCTR207' AND citem='DETGARANT' AND cprpty=1;
	DELETE cfg_form_property WHERE cidcfg = 918001 AND cform='AXISCTR207' AND citem='selectedGarantia' AND cprpty=1;
	DELETE cfg_form_property WHERE cidcfg = 918001 AND cform='AXISCTR207' AND citem='DSP_TOT_FRANQUICIAS' AND cprpty=1;
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24, 918001, 'AXISCTR207', 'DSP_PREGUNTASRIESGO', 1, 0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24, 918001, 'AXISCTR207', 'PREGGARANT', 1, 0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24, 918001, 'AXISCTR207', 'DETGARANT', 1, 0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24, 918001, 'AXISCTR207', 'selectedGarantia', 1, 0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24, 918001, 'AXISCTR207', 'DSP_TOT_FRANQUICIAS', 1, 0);

	
	COMMIT;
	
END;
/