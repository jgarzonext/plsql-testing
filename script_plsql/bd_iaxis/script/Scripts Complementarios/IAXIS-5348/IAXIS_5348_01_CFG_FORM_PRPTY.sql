DECLARE
	
	v_contexto NUMBER := 0;
		
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	UPDATE cfg_form_property
	SET cvalue = 1
	WHERE cprpty = 1
	AND cform = 'AXISCTR009'
	AND citem IN ('BEN_IDENT', 'DSP_BENEFICIARIOS', 'DSP_BENRIESGO')
	AND cidcfg IN (SELECT cidcfg FROM cfg_form
					WHERE cform = 'AXISCTR009'
					AND cmodo = 'ALTA_POLIZA'
					AND (sproduc = 0 or sproduc > 80000 or sproduc in (8062, 8063, 8064))
				   );

	DELETE cfg_form_property WHERE cidcfg = 803801 AND cform = 'AXISCTR009' AND citem = 'DSP_BENEFICIARIOS_1' AND cprpty = 1;
	
	INSERT INTO cfg_form_property (cempres,cidcfg,cform,citem,cprpty,cvalue) VALUES (24,803801,'AXISCTR009','DSP_BENEFICIARIOS_1',1,0);
	
	
	COMMIT;
	
END;
/