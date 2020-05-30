DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE psu_desresultado WHERE ccontrol = 801145;
	DELETE psu_nivel_control WHERE ccontrol = 801145;
	DELETE psu_controlpro WHERE ccontrol = 801145;
	DELETE psu_descontrol WHERE ccontrol = 801145;
	DELETE sgt_trans_formula WHERE clave = 804350;
	DELETE sgt_formulas WHERE clave = 804350;
	
	INSERT INTO sgt_formulas (clave, codigo, descripcion, formula) VALUES (804350, '804350_VALIDA_MARCA', 'Valida Marcas', 'PAC_PSU_CONF.F_MARCA_AUTORIZ(SSEGURO)');
	
	INSERT INTO sgt_trans_formula (clave, parametro) VALUES (804350, 'SSEGURO');
		
	INSERT INTO psu_descontrol (ccontrol, cidioma, tcontrol, cusualt, falta) VALUES (801145, 1, 'Marques pendents d''autoritzar', f_user, f_sysdate);
	INSERT INTO psu_descontrol (ccontrol, cidioma, tcontrol, cusualt, falta) VALUES (801145, 2, 'Marcas pendientes de autorizar', f_user, f_sysdate);
	INSERT INTO psu_descontrol (ccontrol, cidioma, tcontrol, cusualt, falta) VALUES (801145, 8, 'Marcas pendientes de autorizar', f_user, f_sysdate);
	
	INSERT INTO psu_controlpro (ccontrol, sproduc, ctratar, cgarant, producci, renovaci, suplemen, cotizaci, autmanual, establoquea, autoriprev, cretenpor, cformula, cusualt, falta)
		VALUES (801145, 80001, 2, 0, '1', '1', '1', '1', 'A', 'E', 'S', 3, 804350, f_user, f_sysdate);
	
	INSERT INTO psu_nivel_control (ccontrol, sproduc, nvalinf, nvalsup, cnivel, cusualt, falta) VALUES (801145, 80001, 0, 0, 0, f_user, f_sysdate);
	INSERT INTO psu_nivel_control (ccontrol, sproduc, nvalinf, nvalsup, cnivel, cusualt, falta) VALUES (801145, 80001, 1, 1, 2750, f_user, f_sysdate);
	INSERT INTO psu_nivel_control (ccontrol, sproduc, nvalinf, nvalsup, cnivel, cusualt, falta) VALUES (801145, 80002, 0, 0, 0, f_user, f_sysdate);
	INSERT INTO psu_nivel_control (ccontrol, sproduc, nvalinf, nvalsup, cnivel, cusualt, falta) VALUES (801145, 80002, 1, 1, 2750, f_user, f_sysdate);
	INSERT INTO psu_nivel_control (ccontrol, sproduc, nvalinf, nvalsup, cnivel, cusualt, falta) VALUES (801145, 80003, 0, 0, 0, f_user, f_sysdate);
	INSERT INTO psu_nivel_control (ccontrol, sproduc, nvalinf, nvalsup, cnivel, cusualt, falta) VALUES (801145, 80003, 1, 1, 2750, f_user, f_sysdate);
	INSERT INTO psu_nivel_control (ccontrol, sproduc, nvalinf, nvalsup, cnivel, cusualt, falta) VALUES (801145, 80004, 0, 0, 0, f_user, f_sysdate);
	INSERT INTO psu_nivel_control (ccontrol, sproduc, nvalinf, nvalsup, cnivel, cusualt, falta) VALUES (801145, 80004, 1, 1, 2750, f_user, f_sysdate);
	INSERT INTO psu_nivel_control (ccontrol, sproduc, nvalinf, nvalsup, cnivel, cusualt, falta) VALUES (801145, 80005, 0, 0, 0, f_user, f_sysdate);
	INSERT INTO psu_nivel_control (ccontrol, sproduc, nvalinf, nvalsup, cnivel, cusualt, falta) VALUES (801145, 80005, 1, 1, 2750, f_user, f_sysdate);
	INSERT INTO psu_nivel_control (ccontrol, sproduc, nvalinf, nvalsup, cnivel, cusualt, falta) VALUES (801145, 80006, 0, 0, 0, f_user, f_sysdate);
	INSERT INTO psu_nivel_control (ccontrol, sproduc, nvalinf, nvalsup, cnivel, cusualt, falta) VALUES (801145, 80006, 1, 1, 2750, f_user, f_sysdate);
	INSERT INTO psu_nivel_control (ccontrol, sproduc, nvalinf, nvalsup, cnivel, cusualt, falta) VALUES (801145, 80007, 0, 0, 0, f_user, f_sysdate);
	INSERT INTO psu_nivel_control (ccontrol, sproduc, nvalinf, nvalsup, cnivel, cusualt, falta) VALUES (801145, 80007, 1, 1, 2750, f_user, f_sysdate);
	INSERT INTO psu_nivel_control (ccontrol, sproduc, nvalinf, nvalsup, cnivel, cusualt, falta) VALUES (801145, 80008, 0, 0, 0, f_user, f_sysdate);
	INSERT INTO psu_nivel_control (ccontrol, sproduc, nvalinf, nvalsup, cnivel, cusualt, falta) VALUES (801145, 80008, 1, 1, 2750, f_user, f_sysdate);
	INSERT INTO psu_nivel_control (ccontrol, sproduc, nvalinf, nvalsup, cnivel, cusualt, falta) VALUES (801145, 80009, 0, 0, 0, f_user, f_sysdate);
	INSERT INTO psu_nivel_control (ccontrol, sproduc, nvalinf, nvalsup, cnivel, cusualt, falta) VALUES (801145, 80009, 1, 1, 2750, f_user, f_sysdate);
	INSERT INTO psu_nivel_control (ccontrol, sproduc, nvalinf, nvalsup, cnivel, cusualt, falta) VALUES (801145, 80010, 0, 0, 0, f_user, f_sysdate);
	INSERT INTO psu_nivel_control (ccontrol, sproduc, nvalinf, nvalsup, cnivel, cusualt, falta) VALUES (801145, 80010, 1, 1, 2750, f_user, f_sysdate);
	INSERT INTO psu_nivel_control (ccontrol, sproduc, nvalinf, nvalsup, cnivel, cusualt, falta) VALUES (801145, 80011, 0, 0, 0, f_user, f_sysdate);
	INSERT INTO psu_nivel_control (ccontrol, sproduc, nvalinf, nvalsup, cnivel, cusualt, falta) VALUES (801145, 80011, 1, 1, 2750, f_user, f_sysdate);
	
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80001, 0, 1, 'Correcte', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80001, 0, 2, 'Correcto', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80001, 0, 8, 'Correcto', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80001, 2750, 1, 'Marques pendents d''autoritzar', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80001, 2750, 2, 'Marcas pendientes de autorizar', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80001, 2750, 8, 'Marcas pendientes de autorizar', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80002, 0, 1, 'Correcte', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80002, 0, 2, 'Correcto', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80002, 0, 8, 'Correcto', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80002, 2750, 1, 'Marques pendents d''autoritzar', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80002, 2750, 2, 'Marcas pendientes de autorizar', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80002, 2750, 8, 'Marcas pendientes de autorizar', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80003, 0, 1, 'Correcte', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80003, 0, 2, 'Correcto', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80003, 0, 8, 'Correcto', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80003, 2750, 1, 'Marques pendents d''autoritzar', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80003, 2750, 2, 'Marcas pendientes de autorizar', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80003, 2750, 8, 'Marcas pendientes de autorizar', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80004, 0, 1, 'Correcte', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80004, 0, 2, 'Correcto', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80004, 0, 8, 'Correcto', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80004, 2750, 1, 'Marques pendents d''autoritzar', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80004, 2750, 2, 'Marcas pendientes de autorizar', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80004, 2750, 8, 'Marcas pendientes de autorizar', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80005, 0, 1, 'Correcte', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80005, 0, 2, 'Correcto', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80005, 0, 8, 'Correcto', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80005, 2750, 1, 'Marques pendents d''autoritzar', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80005, 2750, 2, 'Marcas pendientes de autorizar', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80005, 2750, 8, 'Marcas pendientes de autorizar', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80006, 0, 1, 'Correcte', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80006, 0, 2, 'Correcto', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80006, 0, 8, 'Correcto', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80006, 2750, 1, 'Marques pendents d''autoritzar', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80006, 2750, 2, 'Marcas pendientes de autorizar', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80006, 2750, 8, 'Marcas pendientes de autorizar', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80007, 0, 1, 'Correcte', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80007, 0, 2, 'Correcto', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80007, 0, 8, 'Correcto', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80007, 2750, 1, 'Marques pendents d''autoritzar', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80007, 2750, 2, 'Marcas pendientes de autorizar', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80007, 2750, 8, 'Marcas pendientes de autorizar', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80008, 0, 1, 'Correcte', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80008, 0, 2, 'Correcto', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80008, 0, 8, 'Correcto', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80008, 2750, 1, 'Marques pendents d''autoritzar', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80008, 2750, 2, 'Marcas pendientes de autorizar', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80008, 2750, 8, 'Marcas pendientes de autorizar', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80009, 0, 1, 'Correcte', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80009, 0, 2, 'Correcto', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80009, 0, 8, 'Correcto', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80009, 2750, 1, 'Marques pendents d''autoritzar', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80009, 2750, 2, 'Marcas pendientes de autorizar', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80009, 2750, 8, 'Marcas pendientes de autorizar', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80010, 0, 1, 'Correcte', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80010, 0, 2, 'Correcto', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80010, 0, 8, 'Correcto', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80010, 2750, 1, 'Marques pendents d''autoritzar', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80010, 2750, 2, 'Marcas pendientes de autorizar', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80010, 2750, 8, 'Marcas pendientes de autorizar', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80011, 0, 1, 'Correcte', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80011, 0, 2, 'Correcto', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80011, 0, 8, 'Correcto', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80011, 2750, 1, 'Marques pendents d''autoritzar', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80011, 2750, 2, 'Marcas pendientes de autorizar', f_user, f_sysdate);
	INSERT INTO psu_desresultado (ccontrol, sproduc, cnivel, cidioma, tdesniv, cusualt, falta) VALUES (801145, 80011, 2750, 8, 'Marcas pendientes de autorizar', f_user, f_sysdate);
	
	COMMIT;
	
END;