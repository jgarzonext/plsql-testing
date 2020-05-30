DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
    
	DELETE cfg_avisos WHERE cform = 'AXISCTR004' AND cidrel = 733732;
    DELETE cfg_rel_avisos WHERE caviso = 733804;
	DELETE avisos WHERE caviso = 733804;

	INSERT INTO avisos (cempres, caviso, slitera, ctipaviso, tfunc, cactivo, cusuari, falta)
		VALUES (24, 733804, 89907071, 1, 'PAC_AVISOS_CONF.F_VALIDA_COMI_CORRETAJE', 1, f_user, f_sysdate);
	
	INSERT INTO cfg_rel_avisos (cempres, cidrel, caviso, cbloqueo, norden, cusuari, falta)
		VALUES (24, 733708, 733804, 1, 1, f_user, f_sysdate);
	INSERT INTO cfg_rel_avisos (cempres, cidrel, caviso, cbloqueo, norden, cusuari, falta)
		VALUES (24, 733732, 733804, 1, 1, f_user, f_sysdate);
    
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','ALTA_POLIZA','CFG_CENTRAL',801,80007,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','ALTA_POLIZA','CFG_FO',8021,80007,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','ALTA_POLIZA','CFG_CENTRAL',801,80008,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','ALTA_POLIZA','CFG_FO',8021,80008,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','ALTA_POLIZA','CFG_CENTRAL',801,80009,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','ALTA_POLIZA','CFG_FO',8021,80009,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','ALTA_POLIZA','CFG_CENTRAL',801,80010,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','ALTA_POLIZA','CFG_FO',8021,80010,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','ALTA_POLIZA','CFG_CENTRAL',801,80011,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','ALTA_POLIZA','CFG_FO',8021,80011,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','ALTA_POLIZA','CFG_CENTRAL',802,80044,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','ALTA_POLIZA','CFG_FO',802,80044,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','ALTA_POLIZA','CFG_CENTRAL',802,8062,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','ALTA_POLIZA','CFG_FO',802,8062,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','ALTA_POLIZA','CFG_CENTRAL',802,8063,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','ALTA_POLIZA','CFG_FO',802,8063,733732,f_user, f_sysdate);
	
    INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_684','CFG_CENTRAL',801,80001,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_684','CFG_FO',801,80001,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_684','CFG_CENTRAL',801,80002,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_684','CFG_FO',801,80002,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_684','CFG_CENTRAL',801,80003,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_684','CFG_FO',801,80003,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_684','CFG_CENTRAL',801,80004,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_684','CFG_FO',801,80004,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_684','CFG_CENTRAL',801,80005,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_684','CFG_FO',801,80005,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_684','CFG_CENTRAL',801,80006,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_684','CFG_FO',801,80006,733732,f_user, f_sysdate);
    INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_684','CFG_CENTRAL',801,80007,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_684','CFG_FO',801,80007,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_684','CFG_CENTRAL',801,80008,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_684','CFG_FO',801,80008,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_684','CFG_CENTRAL',801,80009,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_684','CFG_FO',801,80009,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_684','CFG_CENTRAL',801,80010,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_684','CFG_FO',801,80010,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_684','CFG_CENTRAL',801,80011,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_684','CFG_FO',801,80011,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_684','CFG_CENTRAL',801,80012,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_684','CFG_FO',801,80012,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_684','CFG_CENTRAL',802,80038,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_684','CFG_FO',802,80038,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_684','CFG_CENTRAL',802,80039,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_684','CFG_FO',802,80039,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_684','CFG_CENTRAL',802,80040,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_684','CFG_FO',802,80040,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_684','CFG_CENTRAL',802,80041,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_684','CFG_FO',802,80041,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_684','CFG_CENTRAL',802,80042,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_684','CFG_FO',802,80042,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_684','CFG_CENTRAL',802,80043,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_684','CFG_FO',802,80043,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_684','CFG_CENTRAL',802,80044,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_684','CFG_FO',802,80044,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_684','CFG_CENTRAL',802,8062,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_684','CFG_FO',802,8062,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_684','CFG_CENTRAL',802,8063,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_684','CFG_FO',802,8063,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_684','CFG_CENTRAL',802,8064,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_684','CFG_FO',802,8064,733732,f_user, f_sysdate);
	
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_685','CFG_CENTRAL',801,80001,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_685','CFG_FO',801,80001,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_685','CFG_CENTRAL',801,80002,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_685','CFG_FO',801,80002,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_685','CFG_CENTRAL',801,80003,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_685','CFG_FO',801,80003,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_685','CFG_CENTRAL',801,80004,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_685','CFG_FO',801,80004,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_685','CFG_CENTRAL',801,80005,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_685','CFG_FO',801,80005,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_685','CFG_CENTRAL',801,80006,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_685','CFG_FO',801,80006,733732,f_user, f_sysdate);
    INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_685','CFG_CENTRAL',801,80007,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_685','CFG_FO',801,80007,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_685','CFG_CENTRAL',801,80008,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_685','CFG_FO',801,80008,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_685','CFG_CENTRAL',801,80009,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_685','CFG_FO',801,80009,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_685','CFG_CENTRAL',801,80010,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_685','CFG_FO',801,80010,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_685','CFG_CENTRAL',801,80011,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_685','CFG_FO',801,80011,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_685','CFG_CENTRAL',801,80012,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_685','CFG_FO',801,80012,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_685','CFG_CENTRAL',802,80038,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_685','CFG_FO',802,80038,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_685','CFG_CENTRAL',802,80039,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_685','CFG_FO',802,80039,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_685','CFG_CENTRAL',802,80040,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_685','CFG_FO',802,80040,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_685','CFG_CENTRAL',802,80041,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_685','CFG_FO',802,80041,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_685','CFG_CENTRAL',802,80042,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_685','CFG_FO',802,80042,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_685','CFG_CENTRAL',802,80043,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_685','CFG_FO',802,80043,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_685','CFG_CENTRAL',802,80044,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_685','CFG_FO',802,80044,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_685','CFG_CENTRAL',802,8062,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_685','CFG_FO',802,8062,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_685','CFG_CENTRAL',802,8063,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_685','CFG_FO',802,8063,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_685','CFG_CENTRAL',802,8064,733732,f_user, f_sysdate);
	INSERT INTO cfg_avisos (cempres,cform,cmodo,ccfgavis,cramo,sproduc,cidrel,cusuari,falta) VALUES (24,'AXISCTR004','SUPLEMENTO_685','CFG_FO',802,8064,733732,f_user, f_sysdate);
	
    
	COMMIT;
	
END;
/