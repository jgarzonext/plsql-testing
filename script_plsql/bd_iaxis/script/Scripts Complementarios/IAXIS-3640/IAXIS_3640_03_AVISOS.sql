DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE cfg_avisos WHERE cform = 'AXISCTR207' AND cidrel = 733730 AND cmodo IN ('SUPLEMENTO_915', 'SUPLEMENTO_239');
    DELETE cfg_rel_avisos WHERE caviso IN (733802, 733803);
	DELETE avisos WHERE caviso IN (733802, 733803);
    

	INSERT INTO avisos (cempres, caviso, slitera, ctipaviso, tfunc, cactivo, cusuari, falta)
		VALUES (24, 733802, 89907062, 1, 'PAC_AVISOS_CONF.F_VALIDA_SEL_CERT_AFECTAR', 1, f_user, f_sysdate);
	
	INSERT INTO avisos (cempres, caviso, slitera, ctipaviso, tfunc, cactivo, cusuari, falta)
		VALUES (24, 733803, 89907063, 1, 'PAC_AVISOS_CONF.F_VALIDA_VAL_CERT_AFECTAR', 1, f_user, f_sysdate);
		
	
	INSERT INTO cfg_rel_avisos (cempres, cidrel, caviso, cbloqueo, norden, cusuari, falta)
		VALUES (24, 733730, 733802, 1, 1, f_user, f_sysdate);
	
	INSERT INTO cfg_rel_avisos (cempres, cidrel, caviso, cbloqueo, norden, cusuari, falta)
		VALUES (24, 733730, 733803, 2, 2, f_user, f_sysdate);
	
    
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR207','SUPLEMENTO_915','CFG_CENTRAL',0,0,733730,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR207','SUPLEMENTO_915','CFG_FO',0,0,733730,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR207','SUPLEMENTO_239','CFG_CENTRAL',0,0,733730,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR207','SUPLEMENTO_239','CFG_FO',0,0,733730,f_user, f_sysdate);
	
	
    
	COMMIT;
	
END;
/