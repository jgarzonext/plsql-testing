DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE cfg_form_property WHERE cidcfg = 971001 AND cform = 'AXISCTR207';
	DELETE cfg_form WHERE cidcfg = 971001 AND cform = 'AXISCTR207' AND cmodo = 'SUPLEMENTO_971';
	
	INSERT INTO cfg_form (cempres, cform, cmodo, ccfgform, sproduc, cidcfg, cusualt, falta) 
		VALUES (24, 'AXISCTR207', 'SUPLEMENTO_971', 'CFG_REA_CUM', 0, 971001, f_user, f_sysdate);
	INSERT INTO cfg_form (cempres, cform, cmodo, ccfgform, sproduc, cidcfg, cusualt, falta) 
		VALUES (24, 'AXISCTR207', 'SUPLEMENTO_971', 'CFG_CENTRAL', 0, 971001, f_user, f_sysdate);
	INSERT INTO cfg_form (cempres, cform, cmodo, ccfgform, sproduc, cidcfg, cusualt, falta) 
		VALUES (24, 'AXISCTR207', 'SUPLEMENTO_971', 'CFG_FO', 0, 971001, f_user, f_sysdate);
    
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'FINIVIG', 1, 1);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'FFINVIG', 1, 1);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'ITOTIMP', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'CCOBPRIMA', 1, 1);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'IPRIDEV', 1, 1);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'LIT_PREG_DESPESES', 8, 9001644);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'CREVALI', 4, 2);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'CFORPAG', 3, 1);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'PRECCOM', 2, 1);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'PRECARG', 2, 1);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'PDTOTEC', 2, 1);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'PDTOCOM', 2, 1);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'ITOTDTO', 2, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'IRECFRA', 2, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'IRECARG', 2, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'IIPS', 2, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'IEXTRAP', 2, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'CREVALI', 2, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'CRESPUE', 2, 1);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'CFORPAG', 2, 1);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'BT_REVAL', 2, 1);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'PRECCOM', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'PRECARG', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'PDTOTEC', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'PDTOCOM', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'PARTIDAS', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'ITOTDTO', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'IRECFRA', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'IRECARG', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'IPRIREB', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'IIPS', 1, 1);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'IIEXTRAP', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'IEXTRAP', 1, 1);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'IDGS', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'ICONSOR', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'IARBITR', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'FRANGARANT', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'FRANGARAN', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'DTOSRECS', 1, 1);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'DSP_TOT_FRANQUICIAS', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'DSP_PSU', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'DSP_PREGUNTASQUEST', 1, 1);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'DSP_PREGUNTASDESPESES', 1, 1);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'CTARMAN', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'CRGGARDIF', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'CREVALI', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'CRESPUE', 1, 1);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'CPREGUN', 1, 1);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'CMODALIDAD', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'CFORPAG', 1, 1);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'CAPRECOMEND', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'BT_REVAL', 1, 1);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'BT_EDIT_PREG', 1, 1);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'BT_CUE_BONSAI', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'BT_CONTRATAR', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'IPRIVIGENCIA', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'TITULO_COLECTIVO', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'BT_CUE_SALUT', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'BT_CONVPESOS', 1, 1);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'NPOLIZA', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'IPRITAR', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'IPRITAR', 2, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'TIPRITAR', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'TIPRITAR', 2, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'ICDERREG', 1, 1);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'IPRITOT', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'IPRITOT', 2, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'ITOTDEV', 1, 1);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'ITOTDEV', 2, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'ICONSOR', 2, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'ICDERREG', 2, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'IIEXTRAP', 2, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'IARBITR', 2, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'ITOTALR', 2, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'IPRIANU', 2, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'IDGS', 2, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'IPRIVIGENCIA', 2, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'IPRIREB', 2, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'ITOTALR', 1, 1);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'IPRIANU', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 971001, 'AXISCTR207', 'ITOTIMP', 2, 0);

	
	COMMIT;
	
END;
/