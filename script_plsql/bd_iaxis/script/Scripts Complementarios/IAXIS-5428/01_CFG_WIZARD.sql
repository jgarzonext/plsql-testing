DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE cfg_wizard_skip WHERE cidcfg = 240212 AND cform = 'AXISCTR175';
	DELETE cfg_wizard_forms WHERE cidcfg = 240212;

	INSERT INTO cfg_wizard_forms (cempres, cidcfg, cform_act, ccampo_act, cform_sig, cform_ant, niteracio, csituac) VALUES (24, 240212, 'AXISCTR020', 'BT_SUPLE_212', 'AXISCTR004', null, '1', 'O');
	INSERT INTO cfg_wizard_forms (cempres, cidcfg, cform_act, ccampo_act, cform_sig, cform_ant, niteracio, csituac) VALUES (24, 240212, 'AXISCTR004', '*', 'AXISCTR175', 'AXISCTR020', '1', 'M');
	INSERT INTO cfg_wizard_forms (cempres, cidcfg, cform_act, ccampo_act, cform_sig, cform_ant, niteracio, csituac) VALUES (24, 240212, 'AXISCTR175', '*', 'AXISCTR024', 'AXISCTR004', '1', 'M');
	INSERT INTO cfg_wizard_forms (cempres, cidcfg, cform_act, ccampo_act, cform_sig, cform_ant, niteracio, csituac) VALUES (24, 240212, 'AXISCTR024', '*', null, 'AXISCTR175', '1', 'F');
	INSERT INTO cfg_wizard_forms (cempres, cidcfg, cform_act, ccampo_act, cform_sig, cform_ant, niteracio, csituac) VALUES (24, 240212, 'AXISCTR020', 'BT_CONVPESOS', 'AXISCTR222', null, '1', '0');
	INSERT INTO cfg_wizard_forms (cempres, cidcfg, cform_act, ccampo_act, cform_sig, cform_ant, niteracio, csituac) VALUES (24, 240212, 'AXISCTR207', 'BT_CONVPESOS', 'AXISCTR222', null, '1', '0');
	INSERT INTO cfg_wizard_forms (cempres, cidcfg, cform_act, ccampo_act, cform_sig, cform_ant, niteracio, csituac) VALUES (24, 240212, 'AXISCTR009', 'BT_CONVPESOS', 'AXISCTR222', null, '1', '0');

	INSERT INTO cfg_wizard_skip (cempres, cidcfg, cform, tcond, ctipcond) VALUES (24, 240212, 'AXISCTR175', 'PAC_MD_CFG_PRODUCCION.f_skip_corretaje', 'OP');
	
	
    COMMIT;
	
END;
/