DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE cfg_cod_form WHERE cform = 'AXISCTR510';
	
	INSERT INTO cfg_cod_form (cform, tform)
		VALUES ('AXISCTR510', 'Contratación Suplemento Traslado de vigencia');

	INSERT INTO cfg_wizard_forms (cempres, cidcfg, cform_act, ccampo_act, cform_sig, cform_ant, niteracio, csituac)
		VALUES (24, 240918, 'AXISCTR510', '*', 'AXISCTR004', 'AXISCTR020', 1, 'M');
		
	UPDATE cfg_wizard_forms
	SET cform_ant = 'AXISCTR510'
	WHERE cidcfg = 240918
	AND cform_act = 'AXISCTR004';

	UPDATE cfg_wizard_forms
	SET cform_sig = 'AXISCTR510'
	WHERE cidcfg = 240918
	AND cform_act = 'AXISCTR020';
	
	COMMIT;
	
END;
/