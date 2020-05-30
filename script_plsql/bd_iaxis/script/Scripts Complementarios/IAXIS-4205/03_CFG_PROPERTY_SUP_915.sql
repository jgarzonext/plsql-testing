DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	
	DELETE cfg_form_property WHERE cidcfg = 915802 AND cform = 'AXISCTR207';
	DELETE cfg_form WHERE cmodo = 'SUPLEMENTO_915' AND sproduc IN (80038, 80039, 80040, 80041, 80042, 80043, 80044);
	
	
	INSERT INTO cfg_form (cempres,cform,cmodo,ccfgform,sproduc,cidcfg,cusualt,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_915','CFG_CENTRAL',80038,915005,f_user,f_sysdate);
	INSERT INTO cfg_form (cempres,cform,cmodo,ccfgform,sproduc,cidcfg,cusualt,falta) VALUES (24,'AXISCTR207','SUPLEMENTO_915','CFG_CENTRAL',80038,915802,f_user,f_sysdate);
	INSERT INTO cfg_form (cempres,cform,cmodo,ccfgform,sproduc,cidcfg,cusualt,falta) VALUES (24,'AXISCTR207','SUPLEMENTO_915','CFG_REA_CUM',80038,915802,f_user,f_sysdate);
	INSERT INTO cfg_form (cempres,cform,cmodo,ccfgform,sproduc,cidcfg,cusualt,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_915','CFG_CENTRAL',80039,915005,f_user,f_sysdate);
	INSERT INTO cfg_form (cempres,cform,cmodo,ccfgform,sproduc,cidcfg,cusualt,falta) VALUES (24,'AXISCTR207','SUPLEMENTO_915','CFG_CENTRAL',80039,915802,f_user,f_sysdate);
	INSERT INTO cfg_form (cempres,cform,cmodo,ccfgform,sproduc,cidcfg,cusualt,falta) VALUES (24,'AXISCTR207','SUPLEMENTO_915','CFG_REA_CUM',80039,915802,f_user,f_sysdate);
	INSERT INTO cfg_form (cempres,cform,cmodo,ccfgform,sproduc,cidcfg,cusualt,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_915','CFG_CENTRAL',80040,915005,f_user,f_sysdate);
	INSERT INTO cfg_form (cempres,cform,cmodo,ccfgform,sproduc,cidcfg,cusualt,falta) VALUES (24,'AXISCTR207','SUPLEMENTO_915','CFG_CENTRAL',80040,915802,f_user,f_sysdate);
	INSERT INTO cfg_form (cempres,cform,cmodo,ccfgform,sproduc,cidcfg,cusualt,falta) VALUES (24,'AXISCTR207','SUPLEMENTO_915','CFG_REA_CUM',80040,915802,f_user,f_sysdate);
	INSERT INTO cfg_form (cempres,cform,cmodo,ccfgform,sproduc,cidcfg,cusualt,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_915','CFG_CENTRAL',80041,915002,f_user,f_sysdate);
	INSERT INTO cfg_form (cempres,cform,cmodo,ccfgform,sproduc,cidcfg,cusualt,falta) VALUES (24,'AXISCTR207','SUPLEMENTO_915','CFG_CENTRAL',80041,915802,f_user,f_sysdate);
	INSERT INTO cfg_form (cempres,cform,cmodo,ccfgform,sproduc,cidcfg,cusualt,falta) VALUES (24,'AXISCTR207','SUPLEMENTO_915','CFG_REA_CUM',80041,915802,f_user,f_sysdate);
	INSERT INTO cfg_form (cempres,cform,cmodo,ccfgform,sproduc,cidcfg,cusualt,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_915','CFG_CENTRAL',80042,915003,f_user,f_sysdate);
	INSERT INTO cfg_form (cempres,cform,cmodo,ccfgform,sproduc,cidcfg,cusualt,falta) VALUES (24,'AXISCTR207','SUPLEMENTO_915','CFG_CENTRAL',80042,915802,f_user,f_sysdate);
	INSERT INTO cfg_form (cempres,cform,cmodo,ccfgform,sproduc,cidcfg,cusualt,falta) VALUES (24,'AXISCTR207','SUPLEMENTO_915','CFG_REA_CUM',80042,915802,f_user,f_sysdate);
	INSERT INTO cfg_form (cempres,cform,cmodo,ccfgform,sproduc,cidcfg,cusualt,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_915','CFG_CENTRAL',80043,915004,f_user,f_sysdate);
	INSERT INTO cfg_form (cempres,cform,cmodo,ccfgform,sproduc,cidcfg,cusualt,falta) VALUES (24,'AXISCTR207','SUPLEMENTO_915','CFG_CENTRAL',80043,915802,f_user,f_sysdate);
	INSERT INTO cfg_form (cempres,cform,cmodo,ccfgform,sproduc,cidcfg,cusualt,falta) VALUES (24,'AXISCTR207','SUPLEMENTO_915','CFG_REA_CUM',80043,915802,f_user,f_sysdate);
	INSERT INTO cfg_form (cempres,cform,cmodo,ccfgform,sproduc,cidcfg,cusualt,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_915','CFG_CENTRAL',80044,915005,f_user,f_sysdate);
	INSERT INTO cfg_form (cempres,cform,cmodo,ccfgform,sproduc,cidcfg,cusualt,falta) VALUES (24,'AXISCTR207','SUPLEMENTO_915','CFG_CENTRAL',80044,915802,f_user,f_sysdate);
	INSERT INTO cfg_form (cempres,cform,cmodo,ccfgform,sproduc,cidcfg,cusualt,falta) VALUES (24,'AXISCTR207','SUPLEMENTO_915','CFG_REA_CUM',80044,915802,f_user,f_sysdate);
	


	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','BT_ANT',1,1);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','BT_CONTRATAR',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','BT_CONVPESOS',1,1);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','BT_CUE_BONSAI',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','BT_CUE_SALUT',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','BT_EDIT_PREG',1,1);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','BT_REVAL',1,1);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','BT_REVAL',2,1);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','BT_SEG',1,1);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','CAPRECOMEND',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','CCOBPRIMA',1,1);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','CFORPAG',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','CMODALIDAD',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','CPREGUN',1,1);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','CRESPUE',1,1);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','CRESPUE',2,1);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','CREVALI',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','CREVALI',4,801);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','CRGGARDIF',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','CTARMAN',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','DSP_PREGUNTASDESPESES',1,1);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','DSP_PREGUNTASQUEST',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','DSP_PREGUNTASRIESGO',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','FRANGARAN',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','FRANGARANT',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','IARBITR',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','IARBITR',2,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','ICDERREG',2,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','ICDERREG',1,1);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','ICONSOR',2,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','ICONSOR',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','IDGS',2,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','IDGS',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','IEXTRAP',2,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','IEXTRAP',1,1);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','IIEXTRAP',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','IIEXTRAP',2,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','IIPS',1,1);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','IIPS',2,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','IPRIANU',2,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','IPRIANU',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','IPRIDEV',1,1);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','IPRIREB',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','IPRIREB',2,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','IPRITAR',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','IPRITAR',2,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','IPRITOT',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','IPRITOT',2,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','IPRIVIGENCIA',2,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','IPRIVIGENCIA',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','IRECARG',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','IRECARG',2,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','IRECFRA',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','IRECFRA',2,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','ITOTALR',1,1);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','ITOTALR',2,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','ITOTDEV',2,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','ITOTDEV',1,1);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','ITOTDTO',2,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','ITOTDTO',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','ITOTIMP',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','ITOTIMP',2,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','LIT_PREG_DESPESES',8,89906315);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','NCERTIF',4,803);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','NPOLIZA',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','PARTIDAS',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','PDTOCOM',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','PDTOTEC',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','PRECARG',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','PRECCOM',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','selectedGarantia',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','TIPRITAR',1,0);
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,915802,'AXISCTR207','TIPRITAR',2,0);
	
	
	
	COMMIT;
	
END;
/