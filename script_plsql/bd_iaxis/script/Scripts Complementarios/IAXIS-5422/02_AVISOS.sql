DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
    DELETE cfg_avisos WHERE cform = 'AXISCTR006' AND cidrel = 24 AND cmodo = 'ALTA_POLIZA' AND sproduc = 80044;
    DELETE cfg_avisos WHERE cform = 'AXISCTR006' AND cidrel = 24 AND cmodo = 'SUPLEMENTO_697';
    DELETE cfg_rel_avisos WHERE caviso = 733720;
	DELETE avisos WHERE caviso = 733720;

	INSERT INTO avisos (cempres, caviso, slitera, ctipaviso, tfunc, cactivo, cusuari, falta)
		VALUES (24, 733720, 89907070, 1, 'PAC_AVISOS_CONF.F_VALIDA_NUM_BENEF', 1, f_user, f_sysdate);
	
	INSERT INTO cfg_rel_avisos (cempres, cidrel, caviso, cbloqueo, norden, cusuari, falta)
		VALUES (24, 24, 733720, 2, 1, f_user, f_sysdate);
    
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR006','ALTA_POLIZA','CFG_CENTRAL',802,80044,24,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR006','SUPLEMENTO_697','CFG_CENTRAL',802,80038,24,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR006','SUPLEMENTO_697','CFG_CENTRAL',802,80039,24,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR006','SUPLEMENTO_697','CFG_CENTRAL',802,80040,24,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR006','SUPLEMENTO_697','CFG_CENTRAL',802,80041,24,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR006','SUPLEMENTO_697','CFG_CENTRAL',802,80042,24,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR006','SUPLEMENTO_697','CFG_CENTRAL',802,80043,24,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR006','SUPLEMENTO_697','CFG_CENTRAL',802,80044,24,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR006','SUPLEMENTO_697','CFG_CENTRAL',802,8062,24,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR006','SUPLEMENTO_697','CFG_CENTRAL',802,8063,24,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR006','SUPLEMENTO_697','CFG_CENTRAL',802,8064,24,f_user, f_sysdate);
	
    
	COMMIT;
	
END;
/