DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	INSERT INTO cfg_wizard_forms (cempres, cidcfg, cform_act, ccampo_act, cform_sig, cform_ant, niteracio, csituac)
		VALUES (24, 999940, 'AXISCTR207', '*', 'AXISCTR112', 'AXISCTR004', 1, 'M');
		
	UPDATE cfg_wizard_forms
	SET cform_sig = 'AXISCTR207'
	WHERE cidcfg = 999940
	AND cform_act = 'AXISCTR004';

	UPDATE cfg_wizard_forms
	SET cform_ant = 'AXISCTR207'
	WHERE cidcfg = 999940
	AND cform_act = 'AXISCTR112';
	
	COMMIT;
	
END;
/