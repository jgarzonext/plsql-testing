DECLARE
	v_contexto NUMBER := 0;
	
	CURSOR c_cfgs IS
		SELECT DISTINCT sproduc, ccfgform, cidcfg FROM cfg_form
		WHERE sproduc IN (8062, 8063, 8064)
		AND cmodo = 'ALTA_POLIZA'
		AND cidcfg IN (806201, 806301, 806401)
		ORDER BY sproduc, ccfgform, cidcfg;
	
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	
	DELETE cfg_form_property WHERE cform = 'AXISCTR218' AND cidcfg IN (806201, 806301, 806401);
	DELETE cfg_form WHERE cform = 'AXISCTR218' AND cmodo = 'CONSULTA' AND sproduc IN (8062, 8063, 8064) AND cidcfg IN (806201, 806301, 806401);
	
	FOR cfg IN c_cfgs LOOP
		INSERT INTO cfg_form(cempres, cform, cmodo, ccfgform, sproduc, cidcfg, cusualt, falta) VALUES (24, 'AXISCTR218', 'CONSULTA', cfg.ccfgform, cfg.sproduc, cfg.cidcfg, f_user, f_sysdate);
	END LOOP;
	
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 806201, 'AXISCTR218', 'BT_SINCARGA', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 806201, 'AXISCTR218', 'BT_CONSULTAR', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 806201, 'AXISCTR218', 'BT_BORRAR', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 806201, 'AXISCTR218', 'BT_CARGAR', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 806201, 'AXISCTR218', 'BT_ACEPTAR', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 806201, 'AXISCTR218', 'BT_VALIDAR', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 806301, 'AXISCTR218', 'BT_SINCARGA', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 806301, 'AXISCTR218', 'BT_CONSULTAR', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 806301, 'AXISCTR218', 'BT_BORRAR', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 806301, 'AXISCTR218', 'BT_CARGAR', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 806301, 'AXISCTR218', 'BT_ACEPTAR', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 806301, 'AXISCTR218', 'BT_VALIDAR', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 806401, 'AXISCTR218', 'BT_SINCARGA', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 806401, 'AXISCTR218', 'BT_CONSULTAR', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 806401, 'AXISCTR218', 'BT_BORRAR', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 806401, 'AXISCTR218', 'BT_CARGAR', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 806401, 'AXISCTR218', 'BT_ACEPTAR', 1, 0);
	INSERT INTO cfg_form_property (cempres, cidcfg, cform, citem, cprpty, cvalue) VALUES (24, 806401, 'AXISCTR218', 'BT_VALIDAR', 1, 0);
	
    
    COMMIT;

END;
/