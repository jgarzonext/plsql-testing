DECLARE
	v_contexto NUMBER := 0;
BEGIN

	v_contexto := pac_contexto.f_inicializarctx(pac_parametros.f_parempresa_t(24,'USER_BBDD'));
	
	DELETE axis_literales WHERE slitera = 89907045;
	DELETE axis_codliterales WHERE slitera = 89907045;
	
	INSERT INTO axis_codliterales (slitera, clitera) VALUES (89907045, 6);
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (1, 89907045, 'Ha de informar una de las siguientes preguntas "Valor Contrato / Presupuesto Oferta" o "Nº de SMMLV"');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (2, 89907045, 'Ha de informar una de las siguientes preguntas "Valor Contrato / Presupuesto Oferta" o "Nº de SMMLV"');
	INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (8, 89907045, 'Ha de informar una de las siguientes preguntas "Valor Contrato / Presupuesto Oferta" o "Nº de SMMLV"');	
	
	
	DELETE garanpro_validacion
	WHERE sproduc = 80038
	AND cgarant IN (7030, 7050)
	AND tvalgar = 'pac_propio_garanproval_conf.f_val_preg_val_contrato_rc()';

	INSERT INTO garanpro_validacion (sproduc, cgarant, cactivi, nordval, tvalgar, cprepost, cusualt, falta) VALUES (80038, 7050, 0, 1, 'pac_propio_garanproval_conf.f_val_preg_val_contrato_rc()', 'PRE', f_user, f_sysdate);
	INSERT INTO garanpro_validacion (sproduc, cgarant, cactivi, nordval, tvalgar, cprepost, cusualt, falta) VALUES (80038, 7030, 0, 1, 'pac_propio_garanproval_conf.f_val_preg_val_contrato_rc()', 'PRE', f_user, f_sysdate);
	INSERT INTO garanpro_validacion (sproduc, cgarant, cactivi, nordval, tvalgar, cprepost, cusualt, falta) VALUES (80038, 7050, 1, 1, 'pac_propio_garanproval_conf.f_val_preg_val_contrato_rc()', 'PRE', f_user, f_sysdate);
	INSERT INTO garanpro_validacion (sproduc, cgarant, cactivi, nordval, tvalgar, cprepost, cusualt, falta) VALUES (80038, 7030, 1, 1, 'pac_propio_garanproval_conf.f_val_preg_val_contrato_rc()', 'PRE', f_user, f_sysdate);

   COMMIT;
	
END;
/