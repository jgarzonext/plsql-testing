DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE cfg_rel_avisos WHERE caviso = 733801;
	DELETE avisos WHERE caviso = 733801;

	INSERT INTO avisos (cempres, caviso, slitera, ctipaviso, tfunc, cactivo, cusuari, falta)
		VALUES (24, 733801, 9909325, 1, 'PAC_AVISOS_CONF.F_VALIDA_MARCAS', 1, f_user, f_sysdate);
		
	INSERT INTO cfg_rel_avisos (cempres, cidrel, caviso, cbloqueo, norden, cusuari, falta)
		VALUES (24, 733709, 733801, 1, 1, f_user, f_sysdate);
	
	DELETE cfg_form_property 
	WHERE cform = 'AXISPER045' AND cidcfg = 992030 AND citem = 'OBSERVACION';
	DELETE cfg_form WHERE cform = 'AXISPER045' AND cmodo = 'GENERAL';
	DELETE cfg_cod_form WHERE cform IN ('AXISPER044', 'AXISPER045');

	INSERT INTO cfg_cod_form(cform, tform) VALUES ('AXISPER044', 'Marcas');
	INSERT INTO cfg_cod_form(cform, tform) VALUES ('AXISPER045', 'Observaciones Marcas');

	INSERT INTO cfg_form (cempres, cform, cmodo, ccfgform, sproduc, cidcfg, cusualt, falta) 
		VALUES (24, 'AXISPER045', 'GENERAL', 'CFG_CENTRAL', 0, 992030, f_user, f_sysdate);
	INSERT INTO cfg_form (cempres, cform, cmodo, ccfgform, sproduc, cidcfg, cusualt, falta) 
		VALUES (24, 'AXISPER045', 'GENERAL', 'CFG_FO', 0, 992030, f_user, f_sysdate);

	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) 
		VALUES (24, 992030, 'AXISPER045', 'OBSERVACION', 3, 1);
    
	COMMIT;
	
END;
/